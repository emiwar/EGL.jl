module EGL
include("generated/EGL_api.jl")
import .LibEGL: EGLDisplay, EGLint
include("setup.jl")
export LibEGL
end