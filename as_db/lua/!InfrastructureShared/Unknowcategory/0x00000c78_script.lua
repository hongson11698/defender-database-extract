-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000c78_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("SCRIPT:Twitter!Cookie") then
    local l_0_0 = (mp.getfilename)()
    if (string.find)(l_0_0, "[Cc][oO][oO][kK][Ii][Ee][Ss]") ~= nil then
      (mp.set_mpattribute)("#Twitter!Cookie")
    end
  end
  return mp.CLEAN
end

