-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFWin32MasqMSName\0x00008098_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0 == nil then
  return mp.CLEAN
end
if l_0_0:find("microsoft.griffin.mlagilityservice.dll", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_1 = (pe.get_versioninfo)()
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = l_0_1.CompanyName
if l_0_2 ~= nil then
  l_0_2 = (string.lower)(l_0_2)
  local l_0_3 = {}
  l_0_3["microsoft corporation"] = "Lua:Company_Microsoft"
  l_0_3["microsoft corp."] = "Lua:Company_Microsoft"
  if l_0_3[l_0_2] ~= nil then
    return mp.CLEAN
  end
  local l_0_4 = l_0_1.InternalName
  local l_0_5 = l_0_1.OriginalFilename
  if l_0_4 then
    l_0_4 = (string.lower)(l_0_4)
    if (string.find)(l_0_4, "microsoft.", 1, true) == 1 and l_0_5 then
      l_0_5 = (string.lower)(l_0_5)
      if (string.find)(l_0_5, "microsoft.", 1, true) == 1 and l_0_4:match("(.+)%..+") ~= l_0_2 then
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

