using Documenter, CUDAdrv

makedocs(
    modules = [CUDAdrv],
    format = :html,
    sitename = "CUDAdrv.jl",
    pages = [
        "Home"    => "index.md",
        "Manual"  => [
            "man/usage.md"
        ],
        "Library" => [
            "lib/api.md",
            "lib/array.md"
        ]
    ]
)

deploydocs(
    repo = "github.com/JuliaGPU/CUDAdrv.jl.git",
    target = "build",
    julia = "0.6",
    deps = nothing,
    make = nothing
)
