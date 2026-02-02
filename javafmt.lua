-- mod-version:3
local core = require "core"
local command = require "core.command"
local keymap = require "core.keymap"

local function exec(cmd)
  local fp = io.popen(cmd, "r")
  local res = fp:read("*a")
  local success = fp:close()
  return res:gsub("%\n$", ""), success
end

local function get_cmd_text(cmd, doc)
  local active_filename = doc and system.absolute_path(doc.filename or "")
  return exec(string.format("%s %s", cmd, active_filename))
end

local function update_doc(cmd, doc)
  local text, success = get_cmd_text(cmd, doc)

  -- disable error popups for this plugin only
  local old_error = core.error
  core.error = function() end

  if success == nil then
    local err_text = "Command '%s' not found in the system"
    core.error(string.format(err_text, cmd))
    core.error = old_error
    return
  end

  core.error = old_error

  local sel = { doc:get_selection() }
  doc:remove(1, 1, math.huge, math.huge)
  doc:insert(1, 1, text)
  doc:set_selection(table.unpack(sel))
end

command.add("core.docview!", {
  ["javafmt :format"] = function(dv)
    update_doc("javafmt -i ", dv.doc)
  end,
})
