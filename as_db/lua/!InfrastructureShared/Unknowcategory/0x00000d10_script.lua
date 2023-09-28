-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d10_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 ~= nil then
  local l_0_1 = l_0_0.CompanyName
  local l_0_2 = l_0_0.ProductName
  local l_0_3 = {}
  l_0_3["Check Update"] = ""
  l_0_3.cas = ""
  l_0_3.errorcheck = ""
  l_0_3.smss = ""
  l_0_3.twain_64 = ""
  l_0_3.w32srv = ""
  l_0_3.w32upd = ""
  if l_0_1 == "Hewlett-Packard Company" and l_0_3[l_0_2] then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

