-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000797f_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("BM_OLE_FILE") then
  (mp.set_mpattribute)("SCRIPT:PDFinOLE")
  if (mp.get_mpattribute)("InEmail") then
    local l_0_0 = (mp.getfilesize)()
    if l_0_0 == nil or l_0_0 > 1000000 or l_0_0 < 1000 then
      return mp.CLEAN
    end
    if (mp.BMSearchFile)(0, l_0_0, ".Document.DC\144\001@\144\002@h\000t\000t\000p\000:\000/\000/\144\000") > 0 then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end
