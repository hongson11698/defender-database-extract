-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000405_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched and (string.lower)((string.sub)((this_sigattrlog[2]).utf8p1, -22)) == "easeofaccessdialog.exe" then
  return mp.CLEAN
end
return mp.INFECTED

