-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d0e_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
local l_0_2 = nil
if (this_sigattrlog[4]).matched then
  l_0_2 = (this_sigattrlog[4]).image_path
end
if l_0_2 ~= nil then
  for l_0_6,l_0_7 in ipairs(l_0_1) do
    if l_0_7.image_path == l_0_2 then
      local l_0_8, l_0_9 = (string.match)(l_0_7.ppid, "pid:(%w+),ProcessStart:(%w+)")
      local l_0_10 = tonumber(l_0_8)
      local l_0_11 = tonumber(l_0_9)
      local l_0_12, l_0_13 = (mp.bsplit)(l_0_11, 32)
      local l_0_14 = (string.format)("ppids:{{%d,%d,%d}}\000", l_0_10, l_0_12, l_0_13)
      ;
      (mp.TriggerScanResource)("ems", l_0_14)
    end
  end
end
do
  return mp.INFECTED
end

