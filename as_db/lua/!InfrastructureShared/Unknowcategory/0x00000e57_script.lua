-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000e57_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched then
  local l_0_0 = (this_sigattrlog[2]).utf8p1
  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)((string.sub)(l_0_0, -20))
    if (string.find)(l_0_1, "\\microsoftedgecp.exe", 1, true) or (string.find)(l_0_1, "\\werfault.exe", 1, true) or (string.find)(l_0_1, "\\wmiprvse.exe", 1, true) or (string.find)(l_0_1, "\\mfpmp.exe", 1, true) then
      return mp.CLEAN
    end
  end
end
do
  return mp.INFECTED
end

