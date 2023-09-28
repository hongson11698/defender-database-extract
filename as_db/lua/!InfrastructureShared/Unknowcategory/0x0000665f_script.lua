-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000665f_luac 

-- params : ...
-- function num : 0
local l_0_0 = "×ÀÒººÂÜÍ\000\000\000\000\000\000\000\000×ÀÒÏÊÌÀæ\000\000\000\000\000\000\000\000×ÀÒÞÕÍÅÅÂÈ\000\000\000\000\000\000ßþäåÚòÙÛ÷¾\000\000\000\000\000\000¬ô\255éä¯¬ö¤\aù÷óå\218\000\144\000"
do
  if (mp.getfilesize)() > 50331648 then
    local l_0_1 = 50331648
  end
  -- DECOMPILER ERROR at PC10: Confused about usage of register: R1 in 'UnsetPending'

  if (mp.BMSearchFile)(0, l_0_1, l_0_0) ~= -1 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

