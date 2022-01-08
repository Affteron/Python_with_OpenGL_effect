#version 460 // Version value equale OpenGL's version
// Simple vertex shader. This shader applied to each vertex 
// (in this case - 4 times). Next step building primitive 
// (4 vertex form a rectangle and split to 2 treangle) and rasterization
// (treangle split a fragments - pixels).

in vec3 in_position; // Vertexes coordinate on display plane

void main() {
    gl_Position = vec4(in_position, 1);
}