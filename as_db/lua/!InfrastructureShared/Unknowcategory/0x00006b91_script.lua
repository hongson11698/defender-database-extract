-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006b91_luac 

-- params : ...
-- function num : 0
do
  if peattributes.ismsil == true then
    local l_0_0 = (string.lower)((mp.getfilename)())
    if (string.find)(l_0_0, ".scr$") or (string.find)(l_0_0, ".tmp$") then
      return mp.INFECTED
    else
      return mp.LOWFI
    end
  end
  return mp.CLEAN
end

