-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000f23_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
local l_0_1 = (string.sub)(l_0_0, -4)
do
  if l_0_0 and (l_0_1 == ".exe" or l_0_1 == ".zip" or l_0_1 == ".tmp") then
    local l_0_2 = l_0_0:match("\\([^\\]+)$")
    if l_0_2 and (l_0_2 == "scandisk.exe" or l_0_2 == "scandisc.exe" or l_0_2 == "chrome_update.zip" or (string.match)(l_0_2, "^video%.hd_[%d%[%]]*%.zip$") or (string.match)(l_0_2, "^hd%.gallery_[%d%[%]]*%.zip$") or (string.match)(l_0_2, "^~%w%w%w%w%w%w%w%w%w%w%w%w%.tmp$")) then
      (mp.set_mpattribute)("Lua:SimdaFilename.B")
    end
  end
  return mp.CLEAN
end

