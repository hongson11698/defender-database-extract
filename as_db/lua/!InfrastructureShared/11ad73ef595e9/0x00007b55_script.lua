-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\11ad73ef595e9\0x00007b55_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
do
  if l_0_0 then
    local l_0_1 = (string.lower)(l_0_0.image_path)
    if (string.find)(l_0_1, "\\programdata\\microsoft\\azurewatson\\0\\awdumpifeo.exe", 1, true) or (string.find)(l_0_1, "\\windows\\system32\\werfault.exe", 1, true) or (string.find)(l_0_1, "\\windows\\syswow64\\werfault.exe", 1, true) then
      return mp.CLEAN
    end
  end
  return mp.SUSPICIOUS
end

