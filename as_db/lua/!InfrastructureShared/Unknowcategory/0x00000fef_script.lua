-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000fef_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("pea_dynmem_APIcall") or not (mp.get_mpattribute)("pea_32bitmachine") then
  return mp.CLEAN
end
local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7 = nil, nil, nil, nil, nil, nil, nil, nil
if (this_sigattrlog[2]).matched then
  l_0_0 = (this_sigattrlog[2]).p1
end
if (this_sigattrlog[4]).matched then
  l_0_1 = (this_sigattrlog[4]).p1
end
if (this_sigattrlog[5]).matched then
  l_0_2 = (this_sigattrlog[5]).p1
end
if (this_sigattrlog[6]).matched then
  l_0_3 = (this_sigattrlog[6]).p1
end
if (this_sigattrlog[7]).matched then
  l_0_4 = (this_sigattrlog[7]).p1
end
if l_0_0 ~= nil and l_0_1 ~= nil and l_0_2 ~= nil and l_0_3 ~= nil and l_0_4 ~= nil then
  l_0_5 = l_0_0:match("^C:\\WINDOWS\\SYSTEM32\\(%u+%.DLL)$")
  l_0_6 = l_0_1:match("^C:\\WINDOWS\\(%u+%.DLL)$")
  l_0_7 = l_0_2:match("^C:\\\\(%u+%.DLL)$")
  if l_0_5 ~= nil and l_0_6 ~= nil and l_0_7 ~= nil and l_0_5 == l_0_6 and l_0_5 == l_0_7 and l_0_3:find("^%a+$") and l_0_4:find("^%a+$") then
    return mp.INFECTED
  end
end
return mp.CLEAN

