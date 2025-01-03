module LibEGL

using CEnum
import Libdl

const libEGL = Libdl.find_library(["EGL", "libEGL"])

if isnothing(libEGL)
    error("Could not find libEGL")
end

const __int32_t = Cint

const int32_t = __int32_t

const khronos_int32_t = int32_t

const EGLint = khronos_int32_t

const EGLContext = Ptr{Cvoid}

const EGLDisplay = Ptr{Cvoid}

const EGLSurface = Ptr{Cvoid}

const EGLNativeDisplayType = Ptr{Cvoid}

const EGLSync = Ptr{Cvoid}

const EGLImage = Ptr{Cvoid}

const __u_char = Cuchar

const __u_short = Cushort

const __u_int = Cuint

const __u_long = Culong

const __int8_t = Int8

const __uint8_t = Cuchar

const __int16_t = Cshort

const __uint16_t = Cushort

const __uint32_t = Cuint

const __int64_t = Clong

const __uint64_t = Culong

const __int_least8_t = __int8_t

const __uint_least8_t = __uint8_t

const __int_least16_t = __int16_t

const __uint_least16_t = __uint16_t

const __int_least32_t = __int32_t

const __uint_least32_t = __uint32_t

const __int_least64_t = __int64_t

const __uint_least64_t = __uint64_t

const __quad_t = Clong

const __u_quad_t = Culong

const __intmax_t = Clong

const __uintmax_t = Culong

const __dev_t = Culong

const __uid_t = Cuint

const __gid_t = Cuint

const __ino_t = Culong

const __ino64_t = Culong

const __mode_t = Cuint

const __nlink_t = Culong

const __off_t = Clong

const __off64_t = Clong

const __pid_t = Cint

struct __fsid_t
    __val::NTuple{2, Cint}
end

const __clock_t = Clong

const __rlim_t = Culong

const __rlim64_t = Culong

const __id_t = Cuint

const __time_t = Clong

const __useconds_t = Cuint

const __suseconds_t = Clong

const __suseconds64_t = Clong

const __daddr_t = Cint

const __key_t = Cint

const __clockid_t = Cint

const __timer_t = Ptr{Cvoid}

const __blksize_t = Clong

const __blkcnt_t = Clong

const __blkcnt64_t = Clong

const __fsblkcnt_t = Culong

const __fsblkcnt64_t = Culong

const __fsfilcnt_t = Culong

const __fsfilcnt64_t = Culong

const __fsword_t = Clong

const __ssize_t = Clong

const __syscall_slong_t = Clong

const __syscall_ulong_t = Culong

const __loff_t = __off64_t

const __caddr_t = Ptr{Cchar}

const __intptr_t = Clong

const __socklen_t = Cuint

const __sig_atomic_t = Cint

const int8_t = __int8_t

const int16_t = __int16_t

const int64_t = __int64_t

const uint8_t = __uint8_t

const uint16_t = __uint16_t

const uint32_t = __uint32_t

const uint64_t = __uint64_t

const int_least8_t = __int_least8_t

const int_least16_t = __int_least16_t

const int_least32_t = __int_least32_t

const int_least64_t = __int_least64_t

const uint_least8_t = __uint_least8_t

const uint_least16_t = __uint_least16_t

const uint_least32_t = __uint_least32_t

const uint_least64_t = __uint_least64_t

const int_fast8_t = Int8

const int_fast16_t = Clong

const int_fast32_t = Clong

const int_fast64_t = Clong

const uint_fast8_t = Cuchar

const uint_fast16_t = Culong

const uint_fast32_t = Culong

const uint_fast64_t = Culong

const intptr_t = Clong

const uintptr_t = Culong

const intmax_t = __intmax_t

const uintmax_t = __uintmax_t

const khronos_uint32_t = uint32_t

const khronos_int64_t = int64_t

const khronos_uint64_t = uint64_t

const khronos_int8_t = Int8

const khronos_uint8_t = Cuchar

const khronos_int16_t = Cshort

const khronos_uint16_t = Cushort

const khronos_intptr_t = Clong

const khronos_uintptr_t = Culong

const khronos_ssize_t = Clong

const khronos_usize_t = Culong

const khronos_float_t = Cfloat

const khronos_utime_nanoseconds_t = khronos_uint64_t

const khronos_stime_nanoseconds_t = khronos_int64_t

@cenum khronos_boolean_enum_t::UInt32 begin
    KHRONOS_FALSE = 0
    KHRONOS_TRUE = 1
    KHRONOS_BOOLEAN_ENUM_FORCE_SIZE = 2147483647
end

const EGLNativePixmapType = khronos_uintptr_t

const EGLNativeWindowType = khronos_uintptr_t

const NativeDisplayType = EGLNativeDisplayType

const NativePixmapType = EGLNativePixmapType

const NativeWindowType = EGLNativeWindowType

const EGLBoolean = Cuint

const EGLConfig = Ptr{Cvoid}

# typedef void ( * __eglMustCastToProperFunctionPointerType ) ( void )
const __eglMustCastToProperFunctionPointerType = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLCHOOSECONFIGPROC ) ( EGLDisplay dpy , const EGLint * attrib_list , EGLConfig * configs , EGLint config_size , EGLint * num_config )
const PFNEGLCHOOSECONFIGPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLCOPYBUFFERSPROC ) ( EGLDisplay dpy , EGLSurface surface , EGLNativePixmapType target )
const PFNEGLCOPYBUFFERSPROC = Ptr{Cvoid}

# typedef EGLContext ( EGLAPIENTRYP PFNEGLCREATECONTEXTPROC ) ( EGLDisplay dpy , EGLConfig config , EGLContext share_context , const EGLint * attrib_list )
const PFNEGLCREATECONTEXTPROC = Ptr{Cvoid}

# typedef EGLSurface ( EGLAPIENTRYP PFNEGLCREATEPBUFFERSURFACEPROC ) ( EGLDisplay dpy , EGLConfig config , const EGLint * attrib_list )
const PFNEGLCREATEPBUFFERSURFACEPROC = Ptr{Cvoid}

# typedef EGLSurface ( EGLAPIENTRYP PFNEGLCREATEPIXMAPSURFACEPROC ) ( EGLDisplay dpy , EGLConfig config , EGLNativePixmapType pixmap , const EGLint * attrib_list )
const PFNEGLCREATEPIXMAPSURFACEPROC = Ptr{Cvoid}

# typedef EGLSurface ( EGLAPIENTRYP PFNEGLCREATEWINDOWSURFACEPROC ) ( EGLDisplay dpy , EGLConfig config , EGLNativeWindowType win , const EGLint * attrib_list )
const PFNEGLCREATEWINDOWSURFACEPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLDESTROYCONTEXTPROC ) ( EGLDisplay dpy , EGLContext ctx )
const PFNEGLDESTROYCONTEXTPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLDESTROYSURFACEPROC ) ( EGLDisplay dpy , EGLSurface surface )
const PFNEGLDESTROYSURFACEPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLGETCONFIGATTRIBPROC ) ( EGLDisplay dpy , EGLConfig config , EGLint attribute , EGLint * value )
const PFNEGLGETCONFIGATTRIBPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLGETCONFIGSPROC ) ( EGLDisplay dpy , EGLConfig * configs , EGLint config_size , EGLint * num_config )
const PFNEGLGETCONFIGSPROC = Ptr{Cvoid}

# typedef EGLDisplay ( EGLAPIENTRYP PFNEGLGETCURRENTDISPLAYPROC ) ( void )
const PFNEGLGETCURRENTDISPLAYPROC = Ptr{Cvoid}

# typedef EGLSurface ( EGLAPIENTRYP PFNEGLGETCURRENTSURFACEPROC ) ( EGLint readdraw )
const PFNEGLGETCURRENTSURFACEPROC = Ptr{Cvoid}

# typedef EGLDisplay ( EGLAPIENTRYP PFNEGLGETDISPLAYPROC ) ( EGLNativeDisplayType display_id )
const PFNEGLGETDISPLAYPROC = Ptr{Cvoid}

# typedef EGLint ( EGLAPIENTRYP PFNEGLGETERRORPROC ) ( void )
const PFNEGLGETERRORPROC = Ptr{Cvoid}

# typedef __eglMustCastToProperFunctionPointerType ( EGLAPIENTRYP PFNEGLGETPROCADDRESSPROC ) ( const char * procname )
const PFNEGLGETPROCADDRESSPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLINITIALIZEPROC ) ( EGLDisplay dpy , EGLint * major , EGLint * minor )
const PFNEGLINITIALIZEPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLMAKECURRENTPROC ) ( EGLDisplay dpy , EGLSurface draw , EGLSurface read , EGLContext ctx )
const PFNEGLMAKECURRENTPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLQUERYCONTEXTPROC ) ( EGLDisplay dpy , EGLContext ctx , EGLint attribute , EGLint * value )
const PFNEGLQUERYCONTEXTPROC = Ptr{Cvoid}

# typedef const char * ( EGLAPIENTRYP PFNEGLQUERYSTRINGPROC ) ( EGLDisplay dpy , EGLint name )
const PFNEGLQUERYSTRINGPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLQUERYSURFACEPROC ) ( EGLDisplay dpy , EGLSurface surface , EGLint attribute , EGLint * value )
const PFNEGLQUERYSURFACEPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLSWAPBUFFERSPROC ) ( EGLDisplay dpy , EGLSurface surface )
const PFNEGLSWAPBUFFERSPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLTERMINATEPROC ) ( EGLDisplay dpy )
const PFNEGLTERMINATEPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLWAITGLPROC ) ( void )
const PFNEGLWAITGLPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLWAITNATIVEPROC ) ( EGLint engine )
const PFNEGLWAITNATIVEPROC = Ptr{Cvoid}

function eglChooseConfig(dpy, attrib_list, configs, config_size, num_config)
    ccall((:eglChooseConfig, libEGL), EGLBoolean, (EGLDisplay, Ptr{EGLint}, Ptr{EGLConfig}, EGLint, Ptr{EGLint}), dpy, attrib_list, configs, config_size, num_config)
end

function eglCopyBuffers(dpy, surface, target)
    ccall((:eglCopyBuffers, libEGL), EGLBoolean, (EGLDisplay, EGLSurface, EGLNativePixmapType), dpy, surface, target)
end

function eglCreateContext(dpy, config, share_context, attrib_list)
    ccall((:eglCreateContext, libEGL), EGLContext, (EGLDisplay, EGLConfig, EGLContext, Ptr{EGLint}), dpy, config, share_context, attrib_list)
end

function eglCreatePbufferSurface(dpy, config, attrib_list)
    ccall((:eglCreatePbufferSurface, libEGL), EGLSurface, (EGLDisplay, EGLConfig, Ptr{EGLint}), dpy, config, attrib_list)
end

function eglCreatePixmapSurface(dpy, config, pixmap, attrib_list)
    ccall((:eglCreatePixmapSurface, libEGL), EGLSurface, (EGLDisplay, EGLConfig, EGLNativePixmapType, Ptr{EGLint}), dpy, config, pixmap, attrib_list)
end

function eglCreateWindowSurface(dpy, config, win, attrib_list)
    ccall((:eglCreateWindowSurface, libEGL), EGLSurface, (EGLDisplay, EGLConfig, EGLNativeWindowType, Ptr{EGLint}), dpy, config, win, attrib_list)
end

function eglDestroyContext(dpy, ctx)
    ccall((:eglDestroyContext, libEGL), EGLBoolean, (EGLDisplay, EGLContext), dpy, ctx)
end

function eglDestroySurface(dpy, surface)
    ccall((:eglDestroySurface, libEGL), EGLBoolean, (EGLDisplay, EGLSurface), dpy, surface)
end

function eglGetConfigAttrib(dpy, config, attribute, value)
    ccall((:eglGetConfigAttrib, libEGL), EGLBoolean, (EGLDisplay, EGLConfig, EGLint, Ptr{EGLint}), dpy, config, attribute, value)
end

function eglGetConfigs(dpy, configs, config_size, num_config)
    ccall((:eglGetConfigs, libEGL), EGLBoolean, (EGLDisplay, Ptr{EGLConfig}, EGLint, Ptr{EGLint}), dpy, configs, config_size, num_config)
end

function eglGetCurrentDisplay()
    ccall((:eglGetCurrentDisplay, libEGL), EGLDisplay, ())
end

function eglGetCurrentSurface(readdraw)
    ccall((:eglGetCurrentSurface, libEGL), EGLSurface, (EGLint,), readdraw)
end

function eglGetDisplay(display_id)
    ccall((:eglGetDisplay, libEGL), EGLDisplay, (EGLNativeDisplayType,), display_id)
end

function eglGetError()
    ccall((:eglGetError, libEGL), EGLint, ())
end

function eglGetProcAddress(procname)
    ccall((:eglGetProcAddress, libEGL), __eglMustCastToProperFunctionPointerType, (Ptr{Cchar},), procname)
end

function eglInitialize(dpy, major, minor)
    ccall((:eglInitialize, libEGL), EGLBoolean, (EGLDisplay, Ptr{EGLint}, Ptr{EGLint}), dpy, major, minor)
end

function eglMakeCurrent(dpy, draw, read, ctx)
    ccall((:eglMakeCurrent, libEGL), EGLBoolean, (EGLDisplay, EGLSurface, EGLSurface, EGLContext), dpy, draw, read, ctx)
end

function eglQueryContext(dpy, ctx, attribute, value)
    ccall((:eglQueryContext, libEGL), EGLBoolean, (EGLDisplay, EGLContext, EGLint, Ptr{EGLint}), dpy, ctx, attribute, value)
end

function eglQueryString(dpy, name)
    ccall((:eglQueryString, libEGL), Ptr{Cchar}, (EGLDisplay, EGLint), dpy, name)
end

function eglQuerySurface(dpy, surface, attribute, value)
    ccall((:eglQuerySurface, libEGL), EGLBoolean, (EGLDisplay, EGLSurface, EGLint, Ptr{EGLint}), dpy, surface, attribute, value)
end

function eglSwapBuffers(dpy, surface)
    ccall((:eglSwapBuffers, libEGL), EGLBoolean, (EGLDisplay, EGLSurface), dpy, surface)
end

function eglTerminate(dpy)
    ccall((:eglTerminate, libEGL), EGLBoolean, (EGLDisplay,), dpy)
end

function eglWaitGL()
    ccall((:eglWaitGL, libEGL), EGLBoolean, ())
end

function eglWaitNative(engine)
    ccall((:eglWaitNative, libEGL), EGLBoolean, (EGLint,), engine)
end

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLBINDTEXIMAGEPROC ) ( EGLDisplay dpy , EGLSurface surface , EGLint buffer )
const PFNEGLBINDTEXIMAGEPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLRELEASETEXIMAGEPROC ) ( EGLDisplay dpy , EGLSurface surface , EGLint buffer )
const PFNEGLRELEASETEXIMAGEPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLSURFACEATTRIBPROC ) ( EGLDisplay dpy , EGLSurface surface , EGLint attribute , EGLint value )
const PFNEGLSURFACEATTRIBPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLSWAPINTERVALPROC ) ( EGLDisplay dpy , EGLint interval )
const PFNEGLSWAPINTERVALPROC = Ptr{Cvoid}

function eglBindTexImage(dpy, surface, buffer)
    ccall((:eglBindTexImage, libEGL), EGLBoolean, (EGLDisplay, EGLSurface, EGLint), dpy, surface, buffer)
end

function eglReleaseTexImage(dpy, surface, buffer)
    ccall((:eglReleaseTexImage, libEGL), EGLBoolean, (EGLDisplay, EGLSurface, EGLint), dpy, surface, buffer)
end

function eglSurfaceAttrib(dpy, surface, attribute, value)
    ccall((:eglSurfaceAttrib, libEGL), EGLBoolean, (EGLDisplay, EGLSurface, EGLint, EGLint), dpy, surface, attribute, value)
end

function eglSwapInterval(dpy, interval)
    ccall((:eglSwapInterval, libEGL), EGLBoolean, (EGLDisplay, EGLint), dpy, interval)
end

const EGLenum = Cuint

const EGLClientBuffer = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLBINDAPIPROC ) ( EGLenum api )
const PFNEGLBINDAPIPROC = Ptr{Cvoid}

# typedef EGLenum ( EGLAPIENTRYP PFNEGLQUERYAPIPROC ) ( void )
const PFNEGLQUERYAPIPROC = Ptr{Cvoid}

# typedef EGLSurface ( EGLAPIENTRYP PFNEGLCREATEPBUFFERFROMCLIENTBUFFERPROC ) ( EGLDisplay dpy , EGLenum buftype , EGLClientBuffer buffer , EGLConfig config , const EGLint * attrib_list )
const PFNEGLCREATEPBUFFERFROMCLIENTBUFFERPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLRELEASETHREADPROC ) ( void )
const PFNEGLRELEASETHREADPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLWAITCLIENTPROC ) ( void )
const PFNEGLWAITCLIENTPROC = Ptr{Cvoid}

function eglBindAPI(api)
    ccall((:eglBindAPI, libEGL), EGLBoolean, (EGLenum,), api)
end

function eglQueryAPI()
    ccall((:eglQueryAPI, libEGL), EGLenum, ())
end

function eglCreatePbufferFromClientBuffer(dpy, buftype, buffer, config, attrib_list)
    ccall((:eglCreatePbufferFromClientBuffer, libEGL), EGLSurface, (EGLDisplay, EGLenum, EGLClientBuffer, EGLConfig, Ptr{EGLint}), dpy, buftype, buffer, config, attrib_list)
end

function eglReleaseThread()
    ccall((:eglReleaseThread, libEGL), EGLBoolean, ())
end

function eglWaitClient()
    ccall((:eglWaitClient, libEGL), EGLBoolean, ())
end

# typedef EGLContext ( EGLAPIENTRYP PFNEGLGETCURRENTCONTEXTPROC ) ( void )
const PFNEGLGETCURRENTCONTEXTPROC = Ptr{Cvoid}

function eglGetCurrentContext()
    ccall((:eglGetCurrentContext, libEGL), EGLContext, ())
end

const EGLAttrib = intptr_t

const EGLTime = khronos_utime_nanoseconds_t

# typedef EGLSync ( EGLAPIENTRYP PFNEGLCREATESYNCPROC ) ( EGLDisplay dpy , EGLenum type , const EGLAttrib * attrib_list )
const PFNEGLCREATESYNCPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLDESTROYSYNCPROC ) ( EGLDisplay dpy , EGLSync sync )
const PFNEGLDESTROYSYNCPROC = Ptr{Cvoid}

# typedef EGLint ( EGLAPIENTRYP PFNEGLCLIENTWAITSYNCPROC ) ( EGLDisplay dpy , EGLSync sync , EGLint flags , EGLTime timeout )
const PFNEGLCLIENTWAITSYNCPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLGETSYNCATTRIBPROC ) ( EGLDisplay dpy , EGLSync sync , EGLint attribute , EGLAttrib * value )
const PFNEGLGETSYNCATTRIBPROC = Ptr{Cvoid}

# typedef EGLImage ( EGLAPIENTRYP PFNEGLCREATEIMAGEPROC ) ( EGLDisplay dpy , EGLContext ctx , EGLenum target , EGLClientBuffer buffer , const EGLAttrib * attrib_list )
const PFNEGLCREATEIMAGEPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLDESTROYIMAGEPROC ) ( EGLDisplay dpy , EGLImage image )
const PFNEGLDESTROYIMAGEPROC = Ptr{Cvoid}

# typedef EGLDisplay ( EGLAPIENTRYP PFNEGLGETPLATFORMDISPLAYPROC ) ( EGLenum platform , void * native_display , const EGLAttrib * attrib_list )
const PFNEGLGETPLATFORMDISPLAYPROC = Ptr{Cvoid}

# typedef EGLSurface ( EGLAPIENTRYP PFNEGLCREATEPLATFORMWINDOWSURFACEPROC ) ( EGLDisplay dpy , EGLConfig config , void * native_window , const EGLAttrib * attrib_list )
const PFNEGLCREATEPLATFORMWINDOWSURFACEPROC = Ptr{Cvoid}

# typedef EGLSurface ( EGLAPIENTRYP PFNEGLCREATEPLATFORMPIXMAPSURFACEPROC ) ( EGLDisplay dpy , EGLConfig config , void * native_pixmap , const EGLAttrib * attrib_list )
const PFNEGLCREATEPLATFORMPIXMAPSURFACEPROC = Ptr{Cvoid}

# typedef EGLBoolean ( EGLAPIENTRYP PFNEGLWAITSYNCPROC ) ( EGLDisplay dpy , EGLSync sync , EGLint flags )
const PFNEGLWAITSYNCPROC = Ptr{Cvoid}

function eglCreateSync(dpy, type, attrib_list)
    ccall((:eglCreateSync, libEGL), EGLSync, (EGLDisplay, EGLenum, Ptr{EGLAttrib}), dpy, type, attrib_list)
end

function eglDestroySync(dpy, sync)
    ccall((:eglDestroySync, libEGL), EGLBoolean, (EGLDisplay, EGLSync), dpy, sync)
end

function eglClientWaitSync(dpy, sync, flags, timeout)
    ccall((:eglClientWaitSync, libEGL), EGLint, (EGLDisplay, EGLSync, EGLint, EGLTime), dpy, sync, flags, timeout)
end

function eglGetSyncAttrib(dpy, sync, attribute, value)
    ccall((:eglGetSyncAttrib, libEGL), EGLBoolean, (EGLDisplay, EGLSync, EGLint, Ptr{EGLAttrib}), dpy, sync, attribute, value)
end

function eglCreateImage(dpy, ctx, target, buffer, attrib_list)
    ccall((:eglCreateImage, libEGL), EGLImage, (EGLDisplay, EGLContext, EGLenum, EGLClientBuffer, Ptr{EGLAttrib}), dpy, ctx, target, buffer, attrib_list)
end

function eglDestroyImage(dpy, image)
    ccall((:eglDestroyImage, libEGL), EGLBoolean, (EGLDisplay, EGLImage), dpy, image)
end

function eglGetPlatformDisplay(platform, native_display, attrib_list)
    ccall((:eglGetPlatformDisplay, libEGL), EGLDisplay, (EGLenum, Ptr{Cvoid}, Ptr{EGLAttrib}), platform, native_display, attrib_list)
end

function eglCreatePlatformWindowSurface(dpy, config, native_window, attrib_list)
    ccall((:eglCreatePlatformWindowSurface, libEGL), EGLSurface, (EGLDisplay, EGLConfig, Ptr{Cvoid}, Ptr{EGLAttrib}), dpy, config, native_window, attrib_list)
end

function eglCreatePlatformPixmapSurface(dpy, config, native_pixmap, attrib_list)
    ccall((:eglCreatePlatformPixmapSurface, libEGL), EGLSurface, (EGLDisplay, EGLConfig, Ptr{Cvoid}, Ptr{EGLAttrib}), dpy, config, native_pixmap, attrib_list)
end

function eglWaitSync(dpy, sync, flags)
    ccall((:eglWaitSync, libEGL), EGLBoolean, (EGLDisplay, EGLSync, EGLint), dpy, sync, flags)
end

const __egl_h_ = 1

const _DEFAULT_SOURCE = 1

const __GLIBC_USE_ISOC2X = 0

const __USE_ISOC11 = 1

const __USE_ISOC99 = 1

const __USE_ISOC95 = 1

const __USE_POSIX_IMPLICITLY = 1

const _POSIX_SOURCE = 1

const _POSIX_C_SOURCE = Clong(200809)

const __USE_POSIX = 1

const __USE_POSIX2 = 1

const __USE_POSIX199309 = 1

const __USE_POSIX199506 = 1

const __USE_XOPEN2K = 1

const __USE_XOPEN2K8 = 1

const _ATFILE_SOURCE = 1

const __WORDSIZE = 64

const __WORDSIZE_TIME64_COMPAT32 = 1

const __SYSCALL_WORDSIZE = 64

const __TIMESIZE = __WORDSIZE

const __USE_MISC = 1

const __USE_ATFILE = 1

const __USE_FORTIFY_LEVEL = 0

const __GLIBC_USE_DEPRECATED_GETS = 0

const __GLIBC_USE_DEPRECATED_SCANF = 0

const __STDC_IEC_559__ = 1

const __STDC_IEC_60559_BFP__ = Clong(201404)

const __STDC_IEC_559_COMPLEX__ = 1

const __STDC_IEC_60559_COMPLEX__ = Clong(201404)

const __STDC_ISO_10646__ = Clong(201706)

const __GNU_LIBRARY__ = 6

const __GLIBC__ = 2

const __GLIBC_MINOR__ = 35

# Skipping MacroDefinition: __THROW __attribute__ ( ( __nothrow__ __LEAF ) )

# Skipping MacroDefinition: __THROWNL __attribute__ ( ( __nothrow__ ) )

const __ptr_t = Ptr{Cvoid}

const __flexarr = []

const __glibc_c99_flexarr_available = 1

# Skipping MacroDefinition: __attribute_malloc__ __attribute__ ( ( __malloc__ ) )

# Skipping MacroDefinition: __attribute_pure__ __attribute__ ( ( __pure__ ) )

# Skipping MacroDefinition: __attribute_const__ __attribute__ ( ( __const__ ) )

# Skipping MacroDefinition: __attribute_maybe_unused__ __attribute__ ( ( __unused__ ) )

# Skipping MacroDefinition: __attribute_used__ __attribute__ ( ( __used__ ) )

# Skipping MacroDefinition: __attribute_noinline__ __attribute__ ( ( __noinline__ ) )

# Skipping MacroDefinition: __attribute_deprecated__ __attribute__ ( ( __deprecated__ ) )

# Skipping MacroDefinition: __returns_nonnull __attribute__ ( ( __returns_nonnull__ ) )

# Skipping MacroDefinition: __attribute_warn_unused_result__ __attribute__ ( ( __warn_unused_result__ ) )

# Skipping MacroDefinition: __always_inline __inline __attribute__ ( ( __always_inline__ ) )

# Skipping MacroDefinition: __attribute_artificial__ __attribute__ ( ( __artificial__ ) )

# Skipping MacroDefinition: __extern_inline extern __inline __attribute__ ( ( __gnu_inline__ ) )

# Skipping MacroDefinition: __extern_always_inline extern __always_inline __attribute__ ( ( __gnu_inline__ ) )

# const __fortify_function = __extern_always_inline(__attribute_artificial__)

# Skipping MacroDefinition: __restrict_arr __restrict

const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = 0

const __HAVE_GENERIC_SELECTION = 1

# Skipping MacroDefinition: __attribute_returns_twice__ __attribute__ ( ( __returns_twice__ ) )

const __GLIBC_USE_LIB_EXT2 = 0

const __GLIBC_USE_IEC_60559_BFP_EXT = 0

const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = 0

const __GLIBC_USE_IEC_60559_EXT = 0

const __GLIBC_USE_IEC_60559_FUNCS_EXT = 0

const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = 0

const __GLIBC_USE_IEC_60559_TYPES_EXT = 0

# Skipping MacroDefinition: __S16_TYPE short int

# Skipping MacroDefinition: __U16_TYPE unsigned short int


const INT8_MIN = -128

const INT16_MIN = -32767 - 1

const INT32_MIN = -2147483647 - 1

const INT64_MIN = -(int64_t(9223372036854775807)) - 1

const INT8_MAX = 127

const INT16_MAX = 32767

const INT32_MAX = 2147483647

const INT64_MAX = int64_t(9223372036854775807)

const UINT8_MAX = 255

const UINT16_MAX = 65535

const UINT32_MAX = Cuint(4294967295)

const UINT64_MAX = uint64_t(18446744073709551615)

const INT_LEAST8_MIN = -128

const INT_LEAST16_MIN = -32767 - 1

const INT_LEAST32_MIN = -2147483647 - 1

const INT_LEAST64_MIN = -(int64_t(9223372036854775807)) - 1

const INT_LEAST8_MAX = 127

const INT_LEAST16_MAX = 32767

const INT_LEAST32_MAX = 2147483647

const INT_LEAST64_MAX = int64_t(9223372036854775807)

const UINT_LEAST8_MAX = 255

const UINT_LEAST16_MAX = 65535

const UINT_LEAST32_MAX = Cuint(4294967295)

const UINT_LEAST64_MAX = uint64_t(18446744073709551615)

const INT_FAST8_MIN = -128

const INT_FAST16_MIN = -(Clong(9223372036854775807)) - 1

const INT_FAST32_MIN = -(Clong(9223372036854775807)) - 1

const INT_FAST64_MIN = -(int64_t(9223372036854775807)) - 1

const INT_FAST8_MAX = 127

const INT_FAST16_MAX = Clong(9223372036854775807)

const INT_FAST32_MAX = Clong(9223372036854775807)

const INT_FAST64_MAX = int64_t(9223372036854775807)

const UINT_FAST8_MAX = 255

const UINT_FAST16_MAX = Culong(18446744073709551615)

const UINT_FAST32_MAX = Culong(18446744073709551615)

const UINT_FAST64_MAX = uint64_t(18446744073709551615)

const INTPTR_MIN = -(Clong(9223372036854775807)) - 1

const INTPTR_MAX = Clong(9223372036854775807)

const UINTPTR_MAX = Culong(18446744073709551615)

const INTMAX_MIN = -(int64_t(9223372036854775807)) - 1

const INTMAX_MAX = int64_t(9223372036854775807)

const UINTMAX_MAX = uint64_t(18446744073709551615)

const PTRDIFF_MIN = -(Clong(9223372036854775807)) - 1

const PTRDIFF_MAX = Clong(9223372036854775807)

const SIG_ATOMIC_MIN = -2147483647 - 1

const SIG_ATOMIC_MAX = 2147483647

const SIZE_MAX = Culong(18446744073709551615)

#const WCHAR_MIN = __WCHAR_MIN

#const WCHAR_MAX = __WCHAR_MAX

const WINT_MIN = Cuint(0)

const WINT_MAX = Cuint(4294967295)

const KHRONOS_SUPPORT_INT64 = 1

const KHRONOS_SUPPORT_FLOAT = 1

const KHRONOS_MAX_ENUM = 0x7fffffff

#const EGLAPI = KHRONOS_APICALL

#const EGLAPIENTRY = KHRONOS_APIENTRY

#const EGLAPIENTRYP = Ptr{EGLAPIENTRY}

const EGL_EGL_PROTOTYPES = 1

const EGL_VERSION_1_0 = 1

const EGL_ALPHA_SIZE = 0x3021

const EGL_BAD_ACCESS = 0x3002

const EGL_BAD_ALLOC = 0x3003

const EGL_BAD_ATTRIBUTE = 0x3004

const EGL_BAD_CONFIG = 0x3005

const EGL_BAD_CONTEXT = 0x3006

const EGL_BAD_CURRENT_SURFACE = 0x3007

const EGL_BAD_DISPLAY = 0x3008

const EGL_BAD_MATCH = 0x3009

const EGL_BAD_NATIVE_PIXMAP = 0x300a

const EGL_BAD_NATIVE_WINDOW = 0x300b

const EGL_BAD_PARAMETER = 0x300c

const EGL_BAD_SURFACE = 0x300d

const EGL_BLUE_SIZE = 0x3022

const EGL_BUFFER_SIZE = 0x3020

const EGL_CONFIG_CAVEAT = 0x3027

const EGL_CONFIG_ID = 0x3028

const EGL_CORE_NATIVE_ENGINE = 0x305b

const EGL_DEPTH_SIZE = 0x3025

const EGL_DONT_CARE = EGLint(-1)

const EGL_DRAW = 0x3059

const EGL_EXTENSIONS = 0x3055

const EGL_FALSE = 0

const EGL_GREEN_SIZE = 0x3023

const EGL_HEIGHT = 0x3056

const EGL_LARGEST_PBUFFER = 0x3058

const EGL_LEVEL = 0x3029

const EGL_MAX_PBUFFER_HEIGHT = 0x302a

const EGL_MAX_PBUFFER_PIXELS = 0x302b

const EGL_MAX_PBUFFER_WIDTH = 0x302c

const EGL_NATIVE_RENDERABLE = 0x302d

const EGL_NATIVE_VISUAL_ID = 0x302e

const EGL_NATIVE_VISUAL_TYPE = 0x302f

const EGL_NONE = 0x3038

const EGL_NON_CONFORMANT_CONFIG = 0x3051

const EGL_NOT_INITIALIZED = 0x3001

const EGL_NO_CONTEXT = EGLContext(0)

const EGL_NO_DISPLAY = EGLDisplay(0)

const EGL_NO_SURFACE = EGLSurface(0)

const EGL_PBUFFER_BIT = 0x0001

const EGL_PIXMAP_BIT = 0x0002

const EGL_READ = 0x305a

const EGL_RED_SIZE = 0x3024

const EGL_SAMPLES = 0x3031

const EGL_SAMPLE_BUFFERS = 0x3032

const EGL_SLOW_CONFIG = 0x3050

const EGL_STENCIL_SIZE = 0x3026

const EGL_SUCCESS = 0x3000

const EGL_SURFACE_TYPE = 0x3033

const EGL_TRANSPARENT_BLUE_VALUE = 0x3035

const EGL_TRANSPARENT_GREEN_VALUE = 0x3036

const EGL_TRANSPARENT_RED_VALUE = 0x3037

const EGL_TRANSPARENT_RGB = 0x3052

const EGL_TRANSPARENT_TYPE = 0x3034

const EGL_TRUE = 1

const EGL_VENDOR = 0x3053

const EGL_VERSION = 0x3054

const EGL_WIDTH = 0x3057

const EGL_WINDOW_BIT = 0x0004

const EGL_VERSION_1_1 = 1

const EGL_BACK_BUFFER = 0x3084

const EGL_BIND_TO_TEXTURE_RGB = 0x3039

const EGL_BIND_TO_TEXTURE_RGBA = 0x303a

const EGL_CONTEXT_LOST = 0x300e

const EGL_MIN_SWAP_INTERVAL = 0x303b

const EGL_MAX_SWAP_INTERVAL = 0x303c

const EGL_MIPMAP_TEXTURE = 0x3082

const EGL_MIPMAP_LEVEL = 0x3083

const EGL_NO_TEXTURE = 0x305c

const EGL_TEXTURE_2D = 0x305f

const EGL_TEXTURE_FORMAT = 0x3080

const EGL_TEXTURE_RGB = 0x305d

const EGL_TEXTURE_RGBA = 0x305e

const EGL_TEXTURE_TARGET = 0x3081

const EGL_VERSION_1_2 = 1

const EGL_ALPHA_FORMAT = 0x3088

const EGL_ALPHA_FORMAT_NONPRE = 0x308b

const EGL_ALPHA_FORMAT_PRE = 0x308c

const EGL_ALPHA_MASK_SIZE = 0x303e

const EGL_BUFFER_PRESERVED = 0x3094

const EGL_BUFFER_DESTROYED = 0x3095

const EGL_CLIENT_APIS = 0x308d

const EGL_COLORSPACE = 0x3087

const EGL_COLORSPACE_sRGB = 0x3089

const EGL_COLORSPACE_LINEAR = 0x308a

const EGL_COLOR_BUFFER_TYPE = 0x303f

const EGL_CONTEXT_CLIENT_TYPE = 0x3097

const EGL_DISPLAY_SCALING = 10000

const EGL_HORIZONTAL_RESOLUTION = 0x3090

const EGL_LUMINANCE_BUFFER = 0x308f

const EGL_LUMINANCE_SIZE = 0x303d

const EGL_OPENGL_ES_BIT = 0x0001

const EGL_OPENVG_BIT = 0x0002

const EGL_OPENGL_ES_API = 0x30a0

const EGL_OPENVG_API = 0x30a1

const EGL_OPENVG_IMAGE = 0x3096

const EGL_PIXEL_ASPECT_RATIO = 0x3092

const EGL_RENDERABLE_TYPE = 0x3040

const EGL_RENDER_BUFFER = 0x3086

const EGL_RGB_BUFFER = 0x308e

const EGL_SINGLE_BUFFER = 0x3085

const EGL_SWAP_BEHAVIOR = 0x3093

const EGL_UNKNOWN = EGLint(-1)

const EGL_VERTICAL_RESOLUTION = 0x3091

const EGL_VERSION_1_3 = 1

const EGL_CONFORMANT = 0x3042

const EGL_CONTEXT_CLIENT_VERSION = 0x3098

const EGL_MATCH_NATIVE_PIXMAP = 0x3041

const EGL_OPENGL_ES2_BIT = 0x0004

const EGL_VG_ALPHA_FORMAT = 0x3088

const EGL_VG_ALPHA_FORMAT_NONPRE = 0x308b

const EGL_VG_ALPHA_FORMAT_PRE = 0x308c

const EGL_VG_ALPHA_FORMAT_PRE_BIT = 0x0040

const EGL_VG_COLORSPACE = 0x3087

const EGL_VG_COLORSPACE_sRGB = 0x3089

const EGL_VG_COLORSPACE_LINEAR = 0x308a

const EGL_VG_COLORSPACE_LINEAR_BIT = 0x0020

const EGL_VERSION_1_4 = 1

const EGL_DEFAULT_DISPLAY = EGLNativeDisplayType(0)

const EGL_MULTISAMPLE_RESOLVE_BOX_BIT = 0x0200

const EGL_MULTISAMPLE_RESOLVE = 0x3099

const EGL_MULTISAMPLE_RESOLVE_DEFAULT = 0x309a

const EGL_MULTISAMPLE_RESOLVE_BOX = 0x309b

const EGL_OPENGL_API = 0x30a2

const EGL_OPENGL_BIT = 0x0008

const EGL_SWAP_BEHAVIOR_PRESERVED_BIT = 0x0400

const EGL_VERSION_1_5 = 1

const EGL_CONTEXT_MAJOR_VERSION = 0x3098

const EGL_CONTEXT_MINOR_VERSION = 0x30fb

const EGL_CONTEXT_OPENGL_PROFILE_MASK = 0x30fd

const EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY = 0x31bd

const EGL_NO_RESET_NOTIFICATION = 0x31be

const EGL_LOSE_CONTEXT_ON_RESET = 0x31bf

const EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT = 0x00000001

const EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT = 0x00000002

const EGL_CONTEXT_OPENGL_DEBUG = 0x31b0

const EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE = 0x31b1

const EGL_CONTEXT_OPENGL_ROBUST_ACCESS = 0x31b2

const EGL_OPENGL_ES3_BIT = 0x00000040

const EGL_CL_EVENT_HANDLE = 0x309c

const EGL_SYNC_CL_EVENT = 0x30fe

const EGL_SYNC_CL_EVENT_COMPLETE = 0x30ff

const EGL_SYNC_PRIOR_COMMANDS_COMPLETE = 0x30f0

const EGL_SYNC_TYPE = 0x30f7

const EGL_SYNC_STATUS = 0x30f1

const EGL_SYNC_CONDITION = 0x30f8

const EGL_SIGNALED = 0x30f2

const EGL_UNSIGNALED = 0x30f3

const EGL_SYNC_FLUSH_COMMANDS_BIT = 0x0001

const EGL_FOREVER = Culonglong(0xffffffffffffffff)

const EGL_TIMEOUT_EXPIRED = 0x30f5

const EGL_CONDITION_SATISFIED = 0x30f6

const EGL_NO_SYNC = EGLSync(0)

const EGL_SYNC_FENCE = 0x30f9

const EGL_GL_COLORSPACE = 0x309d

const EGL_GL_COLORSPACE_SRGB = 0x3089

const EGL_GL_COLORSPACE_LINEAR = 0x308a

const EGL_GL_RENDERBUFFER = 0x30b9

const EGL_GL_TEXTURE_2D = 0x30b1

const EGL_GL_TEXTURE_LEVEL = 0x30bc

const EGL_GL_TEXTURE_3D = 0x30b2

const EGL_GL_TEXTURE_ZOFFSET = 0x30bd

const EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_X = 0x30b3

const EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 0x30b4

const EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 0x30b5

const EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x30b6

const EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 0x30b7

const EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x30b8

const EGL_IMAGE_PRESERVED = 0x30d2

const EGL_NO_IMAGE = EGLImage(0)

# exports
const PREFIXES = ["egl", "EGL_"]
for name in names(@__MODULE__; all=true), prefix in PREFIXES
    if startswith(string(name), prefix)
        @eval export $name
    end
end

end # module
