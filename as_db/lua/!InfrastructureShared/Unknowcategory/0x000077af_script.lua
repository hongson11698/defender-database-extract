-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000077af_luac 

-- params : ...
-- function num : 0
for l_0_3 = 1, mp.SIGATTR_LOG_SZ do
  if (sigattr_tail[l_0_3]).matched and (sigattr_tail[l_0_3]).attribute == 16384 then
    local l_0_4 = (string.lower)((mp.utf16to8)((sigattr_tail[l_0_3]).wp1))
    if (string.find)(l_0_4, "\\temp\\%a%a%a%a%a%a%a%a.exe") then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

