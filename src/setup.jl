function eglGetDisplay(display_id::LibEGL.EGLNativeDisplayType = LibEGL.EGL_DEFAULT_DISPLAY)
    display = LibEGL.eglGetDisplay(display_id)
    display == 0 && error("Failed to create EGL display.")
    display
end

function eglInitialize(dpy::EGLDisplay)
    major = Ref{EGLint}()
    minor = Ref{EGLint}()
    success = LibEGL.eglInitialize(dpy, major, minor)
    if success != LibEGL.EGL_TRUE
        error("Failed to initialize EGL display.")
    end
    @info "Initialized EGL version: $(major[]).$(minor[])"
    nothing
end

const default_config_attribs = EGLint[
    LibEGL.EGL_SURFACE_TYPE, LibEGL.EGL_PBUFFER_BIT,
    LibEGL.EGL_BLUE_SIZE, 8,
    LibEGL.EGL_GREEN_SIZE, 8,
    LibEGL.EGL_RED_SIZE, 8,
    LibEGL.EGL_DEPTH_SIZE, 8,
    LibEGL.EGL_RENDERABLE_TYPE, LibEGL.EGL_OPENGL_BIT,
    LibEGL.EGL_NONE
]

function eglChooseConfig(dpy::EGLDisplay, attrib_list::Vector{EGLint})
    config = Ref{LibEGL.EGLConfig}()
    num_configs = Ref{EGLint}()
    success = LibEGL.eglChooseConfig(dpy, attrib_list, config, 1, num_configs)
    if success != LibEGL.EGL_TRUE || num_configs[] == 0
        error("Failed to choose EGL config.")
    end
    @info "Chose EGL config with $(num_configs[]) configurations."
    config[]
end

function eglBindAPI(api::LibEGL.EGLenum)
    success = LibEGL.eglBindAPI(api)
    if success != LibEGL.EGL_TRUE
        error("Failed to bind API.")
    end
    @info "Bound EGL API: $(api)"
    nothing
end

function eglCreateContext(dpy::EGLDisplay, config::LibEGL.EGLConfig,
                          share_context::LibEGL.EGLContext = LibEGL.EGL_NO_CONTEXT)
    context_attribs = EGLint[
        LibEGL.EGL_CONTEXT_MAJOR_VERSION, 4,
        LibEGL.EGL_NONE
    ]
    ctx = LibEGL.eglCreateContext(dpy, config, share_context, context_attribs)
    ctx == LibEGL.EGL_NO_CONTEXT && error("Failed to create EGL context.")
    ctx
end

function eglCreatePbufferSurface(dpy::EGLDisplay, config::LibEGL.EGLConfig, width::Integer, height::Integer)
    max_width  = eglGetConfigAttrib(dpy, config, LibEGL.EGL_MAX_PBUFFER_WIDTH)
    max_height = eglGetConfigAttrib(dpy, config, LibEGL.EGL_MAX_PBUFFER_HEIGHT)
    max_pixels = eglGetConfigAttrib(dpy, config, LibEGL.EGL_MAX_PBUFFER_PIXELS)
    if width > max_width || height > max_height
        @warn "About to create a surface with size $width x $height. EGL max is $max_width x $max_height."
    end
    if max_pixels > 0 && width*height > max_pixels
        @warn "About to create a surface with $(width*height) pixels. EGL max is $max_pixels."
    end
    pbuffer_attribs = [LibEGL.EGL_WIDTH, EGLint(width), LibEGL.EGL_HEIGHT, EGLint(height), LibEGL.EGL_NONE]
    surface = LibEGL.eglCreatePbufferSurface(dpy, config, pbuffer_attribs)
    surface == LibEGL.EGL_NO_SURFACE && error("Failed to create EGL pixel buffer surface.")
    surface
end

function eglGetConfigAttrib(dpy::EGLDisplay, config::LibEGL.EGLConfig, attribute::Integer)
    value = Ref{EGLint}()
    success = LibEGL.eglGetConfigAttrib(dpy, config, UInt16(attribute), value)
    if success != LibEGL.EGL_TRUE
        error("Failed to get EGL config attribute.")
    end
    value[]
end

function eglMakeCurrent(dpy::EGLDisplay, draw::LibEGL.EGLSurface,
                        read::LibEGL.EGLSurface, ctx::LibEGL.EGLContext)
    success = LibEGL.eglMakeCurrent(dpy, draw, read, ctx)
    if success != LibEGL.EGL_TRUE
        error("Failed to make EGL context current.")
    end
    nothing
end

function eglDestroySurface(dpy::EGLDisplay, surface::LibEGL.EGLSurface)
    success = LibEGL.eglDestroySurface(dpy, surface)
    if success != LibEGL.EGL_TRUE
        error("Failed to destroy EGL surface.")
    end
    nothing
end

function eglDestroyContext(dpy::EGLDisplay, ctx::LibEGL.EGLContext)
    success = LibEGL.eglDestroyContext(dpy, ctx)
    if success != LibEGL.EGL_TRUE
        error("Failed to destroy EGL context.")
    end
    nothing
end

function eglTerminate(dpy::EGLDisplay)
    success = LibEGL.eglTerminate(dpy)
    if success != LibEGL.EGL_TRUE
        error("Failed to terminate EGL display.")
    end
    nothing
end
