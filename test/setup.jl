using Test
include("../src/EGL.jl")

@testset "EGL Initialization and termination" begin
    dpy = EGL.eglGetDisplay()
    EGL.eglInitialize(dpy)
    config = EGL.eglChooseConfig(dpy, EGL.default_config_attribs)
    EGL.eglBindAPI(EGL.LibEGL.EGL_OPENGL_API |> EGL.LibEGL.EGLenum)
    ctx = EGL.eglCreateContext(dpy, config)
    @test ctx != C_NULL
    surf = EGL.eglCreatePbufferSurface(dpy, config, 800, 600)
    @test surf != C_NULL
    EGL.eglMakeCurrent(dpy, surf, surf, ctx)
    EGL.eglDestroySurface(dpy, surf)
    EGL.eglDestroyContext(dpy, ctx)
    EGL.eglTerminate(dpy)
end

