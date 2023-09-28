-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\51b35c0a10aa\0x000005e0_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = l_0_0.ppid
if l_0_1 == nil then
  return mp.CLEAN
end
TrackPidAndTechniqueBM(l_0_1, "T1083", "Discovery_File_Redirection_mt2023", 300)
reportRelatedBmHits()
return mp.INFECTED

