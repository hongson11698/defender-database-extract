-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007be9_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 == mp.SCANREASON_ONOPEN then
    local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
    if l_0_1 == "new folder.exe" or l_0_1 == "documents.exe" or l_0_1 == "music.exe" or l_0_1 == "pictures.exe" or l_0_1 == "videos.exe" or l_0_1 == "recycler.exe" then
      (mp.set_mpattribute)("Lowfi:SIGATTR:Worm:Win32/PossibleSillyShareCopy.gen")
    end
  end
  return mp.CLEAN
end

