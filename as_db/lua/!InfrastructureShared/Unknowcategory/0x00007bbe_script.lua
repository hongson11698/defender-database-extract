-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007bbe_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched then
  if (hstrlog[1]).hitcount >= 3 and (mp.getfilesize)() <= 131072 and (mp.getfilesize)() >= 4096 then
    local l_0_0 = (mp.readheader)(0, 1024)
    local l_0_1 = (mp.readfooter)(mp.FOOTERPAGE_SZ - 1024, 1024)
    if (string.find)(l_0_0, "MAD!", 1, true) ~= nil and (string.find)(l_0_1, "MAD!", 1, true) ~= nil then
      return mp.INFECTED
    end
  end
  do
    do return mp.CLEAN end
    return mp.INFECTED
  end
end

