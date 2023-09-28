-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000010b0_luac 

-- params : ...
-- function num : 0
if peattributes.isdll then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
    local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
    local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
    if ((string.sub)(l_0_2, -31) == "\\application data\\windowsupdate" or (string.sub)(l_0_2, -30) == "\\appdata\\roaming\\windowsupdate") and l_0_1 == "msupdate.exe" then
      (mp.set_mpattribute)("Lua:LethicFilename.A")
      return mp.INFECTED
    end
  end
  do
    do
      if l_0_0 == mp.SCANREASON_ONOPEN then
        local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
        if (string.sub)(l_0_3, -56, -44) == "recycler\\s-1-" then
          (mp.set_mpattribute)("Lua:LethicFilename.B")
          return mp.INFECTED
        end
      end
      return mp.CLEAN
    end
  end
end

