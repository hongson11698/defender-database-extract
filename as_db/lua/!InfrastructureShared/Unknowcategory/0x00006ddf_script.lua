-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006ddf_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SLF:Win32/Sysdupate.E") then
  return mp.CLEAN
end
if ((hstrlog[1]).matched and not (hstrlog[2]).matched) or 0 + (hstrlog[1]).hitcount + (hstrlog[2]).hitcount >= 4 then
  return mp.INFECTED
end
return mp.CLEAN

