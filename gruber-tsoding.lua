-- Gruber Banana — Lite XL (strict port, minimal interpretation)

local style = require "core.style"
local common = require "core.common"

-- palette (directly taken from JSON)
local bg          = "#181818"
local bg_dark     = "#151515"
local bg_darker   = "#101010"

local fg          = "#DBD5D8"
local fg_muted    = "#9B9EB1"
local fg_dim      = "#414141"

local yellow      = "#FAE040"
local yellow_dim  = "#FDDB35"
local green       = "#B0FEA1"
local red         = "#FC3556"
local blue        = "#3456FC"
local magenta     = "#DB35FC"
local cyan        = "#35FCDB"
local brown       = "#AF875F"

-- ui
style.background      = { common.color(bg) }
style.background2     = { common.color(bg_dark) }
style.background3     = { common.color(bg_darker) }

style.text            = { common.color(fg) }
style.dim             = { common.color(fg_muted) }
style.accent          = { common.color(yellow) }

style.caret           = { common.color(yellow) }
style.selection       = { common.color("#9B9FB11F") }
style.line_highlight  = { common.color(bg_dark) }

style.scrollbar       = { common.color(yellow) }
style.scrollbar2      = { common.color(yellow) }

style.line_number     = { common.color(fg_dim) }
style.line_number2    = { common.color(yellow) }

-- syntax (1:1 intent, no re-interpretation)
style.syntax["normal"]    = { common.color(fg) }
style.syntax["symbol"]    = { common.color(fg) }

style.syntax["comment"]   = { common.color(brown) }

style.syntax["keyword"]   = { common.color(yellow) }
style.syntax["keyword2"]  = { common.color(yellow_dim) }

style.syntax["string"]    = { common.color(green) }
style.syntax["number"]    = { common.color("#AAA6A2") }
style.syntax["literal"]   = { common.color("#A2A8AA") }

style.syntax["function"]  = { common.color(fg_muted) }
style.syntax["type"]      = { common.color("#FC3556") }
style.syntax["constant"]  = { common.color("#A2A8AA") }
style.syntax["variable"]  = { common.color(fg)}

style.syntax["operator"]  = { common.color(fg) }
style.syntax["delimiter"] = { common.color(fg) }
style.syntax["bracket"]   = { common.color(fg) }

style.syntax["error"]     = { common.color(red) }
style.syntax["warning"]   = { common.color(yellow_dim) }
style.syntax["info"]      = { common.color(blue) }

style.syntax["added"]     = { common.color("#B0FEA1") }
style.syntax["removed"]   = { common.color("#FEA1B0") }
style.syntax["changed"]   = { common.color("#FDDB35") }

return style
