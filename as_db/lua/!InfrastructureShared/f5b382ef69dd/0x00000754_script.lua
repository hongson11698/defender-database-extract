-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\f5b382ef69dd\0x00000754_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((this_sigattrlog[2]).utf8p2)
do
  if l_0_0 ~= nil then
    local l_0_1 = (mp.GetExecutablesFromCommandLine)(l_0_0)
    for l_0_5,l_0_6 in ipairs(l_0_1) do
      if (sysio.IsFileExists)(l_0_6) then
        (bm.add_related_file)(l_0_6)
        ;
        (mp.ReportLowfi)(l_0_6, 2703845775)
      end
    end
    add_parents()
    return mp.INFECTED
  end
  return mp.CLEAN
end

