-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000097c_luac 

-- params : ...
-- function num : 0
do
  if ((this_sigattrlog[5]).matched or this_sigattrlog[6]) and (this_sigattrlog[11]).matched then
    local l_0_0 = (this_sigattrlog[11]).utf8p2
    if l_0_0 and (string.find)(l_0_0, "/upn", 1, true) then
      return mp.CLEAN
    end
  end
  return mp.INFECTED
end

