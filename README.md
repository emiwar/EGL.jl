# EGL.jl

A Julia wrapper for the EGL library.

## Description

Automatically generated Julia bindings to the EGL library for headless rendering, plus some light wrapping of a few EGL functions to make them more convenient for Julia.

Very minimal version and currently only tested on Linux (pop_os!) with a NVIDIA GPU (GeForce RTX 4060).

## Installation

To install this package, use the Julia package manager. In the Julia REPL, run:

```julia
using Pkg
Pkg.add("EGL")
```

## Usage
Creating an EGL surface (800x600):

```julia
import EGL
dpy = EGL.eglGetDisplay()
EGL.eglInitialize(dpy)
config = EGL.eglChooseConfig(dpy, EGL.default_config_attribs)
EGL.eglBindAPI(EGL.LibEGL.EGL_OPENGL_API |> EGL.LibEGL.EGLenum)
ctx = EGL.eglCreateContext(dpy, config)
surf = EGL.eglCreatePbufferSurface(dpy, config, 800, 600)
@test surf != C_NULL
EGL.eglMakeCurrent(dpy, surf, surf, ctx)
```

Destroying the resources after use:
```julia
EGL.eglDestroySurface(dpy, surf)
EGL.eglDestroyContext(dpy, ctx)
EGL.eglTerminate(dpy)
```

Functions and constants generated automatically by `Clang.jl` from `egl.h` are found in `EGL.LibEGL`. These functions typically return an error code or a null pointer if they fail. To create a more convient Julia interface, some functions have wrapped versions in the `EGL` module, and these raise an error if the call fails. For more information, refer to the [EGL documentation](https://registry.khronos.org/EGL/sdk/docs/man/).
