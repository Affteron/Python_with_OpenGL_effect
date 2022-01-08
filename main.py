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
        self.quad = mglw.geomentry.quad_fs()
        # Load shader program (vertex and fragmend shader)
        self.prog = self.load_program(vertex_shader="vertex_shader.glsl",
                                       fragment_shader="fragment_shader.glsl")

    def render(self, time, frame_time):
        # Clear frame buffer
        self.ctx.clear()
        # Render new frame
        self.quad.render(self.prog)


if __name__ == "__main__":
    mglw.run_window_config(App)