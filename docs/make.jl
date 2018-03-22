using Documenter, Octo

makedocs(
    build = joinpath(@__DIR__, "local" in ARGS ? "build_local" : "build"),
    modules = [Octo],
    clean = false,
    format = :html,
    sitename = "Octo.jl 🐙",
    authors = "WooKyoung Noh",
    pages = Any[
        "Home" => "index.md",
        "Repo" => "Repo.md",
        "Schema" => "Schema.md",
        "Queryable" => "Queryable.md",
        "Adapters" => [
            "AdapterBase.md",
            "adapters/SQL.md",
            #"adapters/SQLite.md",
            #"adapters/MySQL.md",
            #"adapters/PostgreSQL.md",
        ],
    ],
    html_prettyurls = !("local" in ARGS),
)