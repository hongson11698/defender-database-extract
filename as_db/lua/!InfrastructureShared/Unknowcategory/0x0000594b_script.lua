-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000594b_luac 

-- params : ...
-- function num : 0
if (string.find)((string.lower)((mp.getfilename)()), "%-%>%(rarsfx%)%-%>%w+%.bat$") == nil then
  return mp.CLEAN
end
return mp.INFECTED

