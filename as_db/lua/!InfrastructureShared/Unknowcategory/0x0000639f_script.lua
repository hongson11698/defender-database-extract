-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000639f_luac 

-- params : ...
-- function num : 0
do
  if peattributes.ismsil then
    local l_0_0 = (string.lower)((mp.getfilename)())
    if not (l_0_0.find)(l_0_0, "avira.pwm.nativemessaging.exe") then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

