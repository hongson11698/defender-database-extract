-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000c4f_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("Exploit:Win32/RockCandy.B!Lowfi.1") then
    local l_0_0 = (mp.getfilename)()
    if (string.find)(l_0_0, "Control.TaskSymbol.1") ~= nil then
      return mp.LOWFI
    end
  end
  return mp.CLEAN
end

