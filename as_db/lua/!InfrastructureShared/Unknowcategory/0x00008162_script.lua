-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008162_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if (l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
  local l_0_3 = (string.lower)(l_0_2)
  if (string.sub)(l_0_3, 1, 12) == "java_update_" and (string.sub)(l_0_1, -5) == "\\temp" and (string.sub)(l_0_3, -4) == ".exe" then
    (mp.set_mpattribute)("Lua:ZemotDownloadFileName.A")
  else
    if (string.sub)(l_0_2, 1, 18) == "UpdateFlashPlayer_" and (string.sub)(l_0_1, -5) == "\\temp" and (string.sub)(l_0_2, -4) == ".exe" then
      if (string.len)(l_0_2) == 30 and (string.match)(l_0_2, "^%x%x%x%x%x%x%x%x", 19) then
        (mp.set_mpattribute)("Lua:ZemotDownloadFileName.B!Cloud")
      else
        ;
        (mp.set_mpattribute)("Lua:ZemotDownloadFileName.B")
      end
    end
  end
end
do
  return mp.CLEAN
end

