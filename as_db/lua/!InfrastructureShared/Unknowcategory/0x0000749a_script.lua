-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000749a_luac 

-- params : ...
-- function num : 0
if peattributes.isdll == true then
  local l_0_0 = (mp.getfilesize)()
  if l_0_0 >= 400000 and l_0_0 <= 750000 then
    local l_0_1 = (string.lower)((mp.getfilename)())
    if l_0_1:find("\\appdata\\roaming\\microsoft\\windows\\templates\\", 1, true) then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

