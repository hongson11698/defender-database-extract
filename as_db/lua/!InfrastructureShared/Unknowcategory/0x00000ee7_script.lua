-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000ee7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
    if l_0_1 == "bitguard.exe" or l_0_1 == "bitguard.dll" then
      (mp.set_mpattribute)("Lua:BProtectorFileName.A")
    else
      if l_0_1 == "browserprotect.exe" or l_0_1 == "browserdefender.exe" or l_0_1 == "browsemngr.exe" then
        (mp.set_mpattribute)("Lua:BProtectorFileName.B")
      end
    end
  end
  return mp.CLEAN
end

