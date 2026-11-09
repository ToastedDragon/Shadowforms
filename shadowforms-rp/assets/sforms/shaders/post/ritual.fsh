#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(location = 0) in vec2 texCoord;
layout(location = 1) flat in float fade;

layout(location = 0) out vec4 fragColor;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

#include <d_shader_utils:hash.glsl>
#include <minecraft:globals.glsl>

#define iTime (GameTime * 1200.)
#define TWOPI 6.28318

vec2 gradient(vec2 p) {
    float angle = TWOPI * hash12(p);
    return vec2(cos(angle), sin(angle));
}

float gradientNoise(vec2 uv) {
    vec2 id = floor(uv);
    vec2 fr = fract(uv);
    float v00 = dot(fr, gradient(id));
    float v01 = dot(fr - vec2(0,1), gradient(id + vec2(0,1)));
    float v10 = dot(fr - vec2(1,0), gradient(id + vec2(1,0)));
    float v11 = dot(fr - vec2(1,1), gradient(id + vec2(1,1)));
    fr = smoothstep(0.,1.,fr);
    return mix(mix(v00, v01, fr.y), mix(v10, v11, fr.y), fr.x);
}

float fbm(vec2 uv) {
    float s = 1.;
    float r = 0.;

    for (int i = 0; i < 4; i++) {
        r += gradientNoise(s*uv)/s;
        s *= 4.0;
    }
    return r;
}
float circle(float s, vec2 uv, vec2 seed, float time) {
    float size = hash12(seed);
    time += 0.1*dot(vec2(100, 53), seed);
    vec3 rand1 = hash33(vec3(seed, floor(time)));
    vec3 rand2 = hash33(vec3(seed, floor(time) + 1.));
    vec3 rand = mix(rand1, rand2, smoothstep(0.,1.,fract(time)));
    uv -= rand.xy - 0.5;
    size = mix(0.5, 2., size);
    uv /= size; // choose random size
    float f = distance(uv, vec2(0.5));
    return smoothstep(0.5, 2., size) * smoothstep(0.4, (0.4 - 0.1*s)*min(size, 1.), f + 0.1);
}

float grid(float s, vec2 uv, float seed) {
    vec2 id = floor(uv);
    uv = fract(uv);
    float f = 0.0;
    for (float dx = -1.; dx <= 1.; dx++)
    for (float dy = -1.; dy <= 1.; dy++) {
        vec2 o = vec2(dx, dy);
        f += circle(s, uv - o, 0.1*(id + o + seed), iTime * 0.2 * (1. + seed / 100.));
    }
    return f;
}

vec2 mirrored(vec2 uv, float times) {
    float period = 2.*TWOPI / times;
    uv = vec2(atan(uv.y, uv.x), length(uv));
    uv.x = abs(fract(uv.x / period) - 0.5) * period;
    return uv.y * vec2(cos(uv.x), sin(uv.x));
}

void main() {
    if (fade <= 0.0) {
        fragColor = texture(InSampler, texCoord);
        return;
    }
    float nFade = clamp(fade, 0., 1.);
    vec2 uv = (texCoord * 2. - 1.) * OutSize / max(OutSize.x, OutSize.y);
    uv *= nFade * nFade;
    
    float I = mix(0.2, 1.0, smoothstep(0.1, 0.9, 0.5 + 0.5 * sin(iTime * 0.2)));

    float r = length(uv);
    uv = uv / r * (min(r, 1.8 - r));
    r = length(uv);
    float f2 = 0.25*smoothstep(0.6, 1.0, r);
    float stretch = (r -I*0.1*smoothstep(0.,I*0.15,r-0.3)) / r;
    float f1 = 5.0*smoothstep(0.2, 0.6, r) * smoothstep(0.35, 0.3, r*stretch);
    float f1_1 = 0.25*(smoothstep(0.45, 0.4, r*stretch) * smoothstep(0.35, 0.4, r*stretch));
    float f3 = 0.25*smoothstep(0.5, 1.0, r) * smoothstep(0.9, 0.6, r);
    vec2 m1 = mirrored(uv * 35. * stretch, 20.);
    vec2 m2 = mirrored(uv * 2., 20.);
    // Time varying pixel color
    float f = 0.;
    if (f1 > 0.0) f += f1 * (grid(2.0, m1, 200.));
    if (f1_1 > 0.0) f += f1_1 * grid(2.0, m1, 0.);
    if (f2 > 0.0) f += f2 * (grid(1.0, m2, 0.));
    if (f3 > 0.0) f += f3 * (grid(1.0, mirrored(uv * 10., 20.), 0.));
    float f4 = smoothstep(0.55, 0.65, r);
    float innerNoise = f4 == 1.0 ? 0.0 : fbm(m1);
    float outerNoise = f4 == 0.0 ? 0.0 : fbm(m2);
    f *= 0.4 + 0.9 * mix(
        innerNoise,
        outerNoise,
        f4
    );
    vec3 col = vec3(0);
    vec3 overlayColor = vec3(1., .1, .05);
    col = mix(col + 4. * overlayColor * f, overlayColor, 0.1*smoothstep(0.,0.5,f));

    col = texture(InSampler, texCoord).rgb + nFade * col;
    // Output to screen
    fragColor = vec4(col,1.0);
}