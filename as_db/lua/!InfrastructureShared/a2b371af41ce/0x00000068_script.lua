-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a2b371af41ce\0x00000068_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
do
  if l_0_0 ~= nil and l_0_0.command_line ~= nil and (l_0_0.command_line):find(" -c ", 1, true) then
    local l_0_1, l_0_2 = (bm.get_process_relationships)()
    for l_0_6,l_0_7 in ipairs(l_0_1) do
      local l_0_8 = l_0_7.image_path
      if l_0_8 ~= nil then
        local l_0_9 = {}
        l_0_9["raystation.exe"] = true
        l_0_9["devenv.exe"] = true
        l_0_9["code.exe"] = true
        if l_0_9[(string.lower)(l_0_8:match("\\([^\\]+)$"))] then
          return mp.CLEAN
        end
      end
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

