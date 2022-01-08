#version 460
// The only task of the fragment shader is to compute the color
// of each pixel.

out vec4 fragColor; 

uniform vec2 resolution;
uniform float time;


void main() {
    vec2 uv = (gl_FragCoord.xy - 0.5 * resolution.xy) / resolution.y;
    vec3 col = vec3(0.0);

    col += 0.01 / length(uv);

    fragColor = vec4(col, 1.0);
}