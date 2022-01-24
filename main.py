import moderngl_window as mglw

'''
App template
'''
class App(mglw.WindowConfig):
    window_size = 1600, 900
    resource_dir = "programs"

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        # Create quad screen (plane with four vertexes)
        self.quad = mglw.geometry.quad_fs()
        # Load shader program (vertex and fragmend shader)
        self.prog = self.load_program(vertex_shader="vertex_shader.glsl",
                                       fragment_shader="fragment_shader.glsl")
        self.set_uniform("resolution", self.window_size)

    def set_uniform(self, u_name, u_value):
        try:
            self.prog[u_name] = u_value
        except KeyError:
            print(f"Uniform: {u_name} - not used in shader")

    def render(self, time, frame_time):
        # Clear frame buffer
        self.ctx.clear()
        # Transfer a time value in fragment shader
        self.set_uniform("time", time)
        # Render new frame
        self.quad.render(self.prog)


if __name__ == "__main__":
    mglw.run_window_config(App)