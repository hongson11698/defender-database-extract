-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000dbc_luac 

-- params : ...
-- function num : 0
if peattributes.arm_image then
  return mp.CLEAN
end
do
  if peattributes.no_imports and peattributes.no_boundimport and peattributes.no_delayimport and peattributes.no_iat then
    local l_0_0 = ((pehdr.DataDirectory)[2]).RVA
    if l_0_0 ~= 0 and l_0_0 < 8192 and l_0_0 < (pesecs[1]).VirtualAddress then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

