-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007c36_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
do
  if l_0_0 and (MpCommon.GetPersistContextCountNoPath)("OfficeWmiProc") > 0 then
    local l_0_1 = (MpCommon.GetPersistContextNoPath)("OfficeWmiProc")
    if (string.find)(l_0_0, "wmiprvse.exe", 1, true) then
      for l_0_5,l_0_6 in ipairs(l_0_1) do
        if (sysio.IsFileExists)(l_0_6) then
          (bm.add_related_file)(l_0_6)
        end
      end
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

