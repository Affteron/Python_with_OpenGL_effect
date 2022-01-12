#version 460
// The only task of the fragment shader is to compute the color
// of each pixel.

out vec4 fragColor; 

uniform vec2 resolution;
uniform float time;


void main() {
    vec2 uv = (gl_FragCoord.xy - 0.5 * resolution.xy) / resolution.y;
    vec3 col = vec3(0.0);

    // Const for calculate normilize x coordinate 
    float r = 0.17;

    for (float i = 0.0; i < 60.0; i++){
        float a = i / 3;
        float dx = 2 * r * cos(a) - r * cos(2 * a);
        float dy = 2 * r * sin(a) - r * sin(2 * a);

        col += 0.001 / length(uv - vec2(dx + 0.1, dy));
    }


    fragColor = vec4(col, 1.0);
}