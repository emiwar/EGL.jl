using Clang.Generators

# Path to the EGL header and other include directories
egl_include_dir = "/usr/include/EGL"
egl_header = joinpath(egl_include_dir, "egl.h")

# Wrapper generator options
options = load_options(joinpath(@__DIR__, "generator.toml"))

# Add any required compiler flags
args = get_default_args()
push!(args, "-I/usr/include")
push!(args, "-I/usr/include/x86_64-linux-gnu/")

# Create the context
ctx = create_context([egl_header], args, options)

# Generate the bindings
build!(ctx)