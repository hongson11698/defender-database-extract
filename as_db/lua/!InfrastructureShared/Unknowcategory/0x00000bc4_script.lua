-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000bc4_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (string.sub)((this_sigattrlog[1]).wp1, -4) == ".pdf" then
  return mp.INFECTED
end
return mp.CLEAN

