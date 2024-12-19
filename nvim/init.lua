require("mradhyaf")

-- WIP plugins
local plugins = {
    "tman",
}

for _, mod in ipairs(plugins) do
    local ok, _ = pcall(require, mod)
end
