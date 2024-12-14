local error_message = "Unable to load modules: "
local all_ok = true

local submodules = {
    -- Options
    "set",
    "remap",
    "autocmd",
    "termcmd",
    -- Plugins
    "lazy"
}

for _, mod in ipairs(submodules) do
    local ok, _ = pcall(require, "mradhyaf."..mod)
    if not ok then
        error_message = error_message.."\n\t- mradhyaf."..mod
        all_ok = false
    end
end

if not all_ok then
    print(error_message)
end
