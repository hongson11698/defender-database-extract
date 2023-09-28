-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000006a0_luac 

-- params : ...
-- function num : 0
local l_0_0 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).RVA
do
  if l_0_0 == 0 and (peattributes.isdll or peattributes.isexe) then
    local l_0_1 = (string.lower)((mp.getfilename)())
    if l_0_1:find("\\windows\\", 1, true) or l_0_1:find(".wim", 1, true) or l_0_1:find(".cab", 1, true) then
      return mp.CLEAN
    end
  end
  return mp.INFECTED
end

