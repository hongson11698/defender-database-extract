-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\15b34d2baedd\0x00007542_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if l_0_6.image_path ~= nil then
    if contains(l_0_6.image_path, "regsvr32.exe") then
      return mp.INFECTED
    else
      local l_0_7 = (MpCommon.GetOriginalFileName)(l_0_6.image_path)
      if contains(l_0_7, "regsvr32.exe") then
        return mp.INFECTED
      end
    end
  end
end
return mp.CLEAN

