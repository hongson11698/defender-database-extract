-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006378_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
else
  if (mp.get_mpattribute)("MHSTR:MacroDownload") and (mp.get_mpattribute)("MHSTR:MacroJustOpen") then
    return mp.INFECTED
  end
end
return mp.LOWFI

