#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(location = 0) in vec2 texCoord;
layout(location = 1) flat in float fade;

layout(location = 0) out vec4 fragColor;

#include <d_shader_utils:hsv.glsl>

void main() {
    vec3 col = texture(InSampler, texCoord).rgb;
    if (fade <= 0.0) {
        fragColor = vec4(col, 1.);
        return;
    }
    float highlightedHue = 0.0; // red is 0
    float minSaturation = 0.3; // not matching pixels still get this much saturation
    float filterBroadness = .05; // hue can deviate up to this much from the target hue
    float highlightIntensity = 4.;
    
    vec3 hsv = rgbToHsv(col);
    
    // if hue is close to target and saturation is high
    float closeness = min(1.,max(0.,highlightIntensity*(1. - abs(fract(hsv.x - highlightedHue + .5) - .5) * 2./filterBroadness)) * hsv.g);
    
    vec3 gray = vec3(dot(col, vec3(0.3, 0.6, 0.1)));
    
    // make output color's saturation correspond to input color's closeness
    float saturation = max(closeness, minSaturation);

    col = mix(gray, col, 1. - (1. - saturation) * clamp(fade, 0., 1.));

    // Output to screen
    fragColor = vec4(col,1.0);
}