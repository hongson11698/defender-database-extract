-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000011e3_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  if l_0_2 == "realupdater.exe" and (string.sub)(l_0_1, -5) == "\\temp" then
    (mp.set_mpattribute)("Lua:UpatreDownloadFileName.C")
  else
    if l_0_2 == "opera_autoupdater.exe" and (string.sub)(l_0_1, -5) == "\\temp" then
      (mp.set_mpattribute)("Lua:UpatreDownloadFileName.D")
    else
      if ((string.sub)(l_0_2, -4) == ".txt" or (string.sub)(l_0_2, -4) == ".tip" or (string.sub)(l_0_2, -4) == ".pdd" or (string.sub)(l_0_2, -4) == ".exe" or (string.sub)(l_0_2, -4) == ".but" or (string.sub)(l_0_2, -4) == ".pic" or (string.sub)(l_0_2, -4) == ".enc" or (string.sub)(l_0_2, -4) == ".dat" or (string.sub)(l_0_2, -4) == ".z12" or (string.sub)(l_0_2, -4) == ".mp3" or (string.sub)(l_0_2, -4) == ".big" or (string.sub)(l_0_2, -4) == ".din" or (string.sub)(l_0_2, -4) == ".in1" or (string.sub)(l_0_2, -4) == ".fla" or (string.sub)(l_0_2, -4) == ".gik" or (string.sub)(l_0_2, -4) == ".pin" or (string.sub)(l_0_2, -4) == ".fb2" or (string.sub)(l_0_2, -4) == ".ssa" or (string.sub)(l_0_2, -4) == ".elf" or (string.sub)(l_0_2, -4) == ".wix" or (string.sub)(l_0_2, -4, -2) == ".bf") and headerpage[1] == 90 and headerpage[2] == 90 and headerpage[3] == 80 and headerpage[4] == 0 then
        (mp.set_mpattribute)("Lua:UpatreDownloadFileName!enc")
      end
    end
  end
end
do
  return mp.CLEAN
end

