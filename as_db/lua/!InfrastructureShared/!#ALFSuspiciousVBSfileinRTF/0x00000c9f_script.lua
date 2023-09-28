-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFSuspiciousVBSfileinRTF\0x00000c9f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
do
  if l_0_0 > 100 and l_0_0 < 1000000 then
    local l_0_1 = (string.lower)((mp.getfilename)())
    if (string.match)(l_0_1, "rtf%d.+->.+") then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

