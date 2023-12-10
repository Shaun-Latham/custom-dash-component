
module Examplecomponent
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl/''_examplecomponent.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "examplecomponent",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "examplecomponent.min.js",
    external_url = nothing,
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "examplecomponent.min.js.map",
    external_url = nothing,
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
