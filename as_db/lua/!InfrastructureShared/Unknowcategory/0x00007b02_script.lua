-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b02_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[6]).matched and (this_sigattrlog[7]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[6]).p1)
  local l_0_1 = (string.lower)((this_sigattrlog[7]).p1)
  if l_0_0 and (string.find)(l_0_0, "^(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)$") and l_0_1 and (string.len)(l_0_1) < 16 and (string.find)(l_0_1, "^/[%w/_%-=]+$") then
    return mp.INFECTED
  end
  return mp.CLEAN
end
do
  return mp.CLEAN
end

