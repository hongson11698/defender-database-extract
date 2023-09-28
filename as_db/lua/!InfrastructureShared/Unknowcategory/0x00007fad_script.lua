-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007fad_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = (mp.getfilesize)()
  if l_0_1 > 5242880 then
    return mp.CLEAN
  end
  local l_0_2 = (string.lower)((mp.getfilename)())
  if l_0_2 == nil or (string.len)(l_0_2) < 10 then
    return mp.CLEAN
  end
  local l_0_3 = l_0_2:sub(-4)
  local l_0_4 = {}
  l_0_4[".exe"] = true
  l_0_4[".scr"] = true
  l_0_4[".pif"] = true
  if l_0_4[l_0_3] == true then
    if not l_0_2:find(".iso->", 1, true) and not l_0_2:find(".vhd->", 1, true) and not l_0_2:find("ppkg->", 1, true) and not l_0_2:find(".img->", 1, true) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

