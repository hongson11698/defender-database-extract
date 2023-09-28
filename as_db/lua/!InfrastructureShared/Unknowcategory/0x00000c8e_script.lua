-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000c8e_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("SCRIPT:PowerShell/Ploty.C!head") then
    local l_0_0 = (string.lower)((mp.getfilename)())
    if (string.find)(l_0_0, "%->%[powershellb64%]%->%(base64%)") then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

