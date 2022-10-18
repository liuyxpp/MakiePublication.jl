using Documenter
using MakiePublication

makedocs(;
    modules=[MakiePublication],
    authors="Yi-Xin Liu <lyx@fudan.edu.cn> and contributors",
    repo="https://github.com/liuyxpp/MakiePublication.jl/blob/{commit}{path}#L{line}",
    sitename="MakiePublication.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://www.yxliu.group/MakiePublication",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Quick Start" => "quickstart.md",
        "Tutorial" => "tutorial/index.md",
        "User Manual" => "manual.md",
    ],
)

deploydocs(;
    repo="github.com/liuyxpp/MakiePublication.jl",
)