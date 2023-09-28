-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000ba1_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched and (this_sigattrlog[3]).matched and (this_sigattrlog[2]).wp1 == (this_sigattrlog[3]).wp1 then
  return mp.INFECTED
end
return mp.CLEAN

