#version 460
// The only task of the fragment shader is to compute the color
// of each pixel.

out vec4 fragColor; 

uniform vec2 resolution;
uniform float time;


void main() {
    vec3 col = vec3(0.0);

    fragColor = vec4(col, 1.0);
}