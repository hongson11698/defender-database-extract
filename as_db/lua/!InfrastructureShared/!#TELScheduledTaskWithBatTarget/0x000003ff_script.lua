-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELScheduledTaskWithBatTarget\0x000003ff_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
local l_0_1, l_0_2 = l_0_0:match("(.+\\)([^\\]+)$")
if l_0_1:len() > 8 and (string.sub)(l_0_1, -7) == "\\tasks\\" then
  if mp.HEADERPAGE_SZ <= 4096 then
    local l_0_3 = tostring(headerpage)
    local l_0_4 = l_0_3:match("<Exec>.+<Command>(.+)</Command>")
    if l_0_4 ~= nil and l_0_4:len() > 5 and (string.sub)(l_0_4, -4) == ".bat" then
      (mp.ReportLowfi)(l_0_4, 203848782)
    end
  end
  do
    do return mp.INFECTED end
    return mp.CLEAN
  end
end

