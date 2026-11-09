#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(location = 0) in vec2 texCoord;
layout(location = 1) flat in float fade;

layout(location = 0) out vec4 fragColor;

layout(std140) uniform VignetteConfig {
    vec3 Color;
    float Radius;
};

void main() {
    vec3 col = texture(InSampler, texCoord).rgb;
    if (fade <= 0.0) {
        fragColor = vec4(col, 1.);
        return;
    }

    float r = length(texCoord - 0.5);
    r = clamp(r - Radius + clamp(fade, 0., 1.) - 1., 0., 1.);

    col = mix(col, Color / 255., r);
    fragColor = vec4(col, 1.);
}
