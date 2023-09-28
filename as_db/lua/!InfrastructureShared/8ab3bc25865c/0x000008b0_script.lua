-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\8ab3bc25865c\0x000008b0_luac 

-- params : ...
-- function num : 0
local l_0_0 = "default|current|lastKnownGood"
local l_0_1 = nil
if (this_sigattrlog[3]).matched and (this_sigattrlog[2]).matched then
  l_0_1 = (string.lower)(((this_sigattrlog[3]).utf8p1):match("Select\\\\(%w+)"))
  if not (string.find)(l_0_0, l_0_1, 1, true) then
    return mp.CLEAN
  end
else
  return mp.CLEAN
end
local l_0_2 = ((sysio.RegOpenKey)("HKLM\\SYSTEM\\Select"))
local l_0_3 = nil
if l_0_2 then
  l_0_3 = (sysio.GetRegValueAsDword)(l_0_2, l_0_1)
  l_0_3 = (string.format)("%03d", l_0_3)
end
local l_0_4 = "hklm\\system\\controlset" .. l_0_3 .. "\\SERVICES\\"
local l_0_5 = {}
l_0_5.windefend = "(c:\\\\programdata|%programfiles%)\\\\microsoft\\\\windows defender\\\\platform\\\\[\\d\\.-]+\\\\msmpeng.exe"
l_0_5.sense = "(c:\\\\program files|%programfiles%)\\\\windows defender advanced threat protection\\\\mssense.exe"
l_0_5.wdfilter = "(c:\\\\windows\\\\)?system32\\\\drivers\\\\wd\\\\wdfilter.sys"
l_0_5.wdboot = "(c:\\\\windows\\\\)?system32\\\\drivers\\\\wd\\\\wdboot.sys"
for l_0_9,l_0_10 in pairs(l_0_5) do
  local l_0_11 = l_0_4 .. l_0_9
  local l_0_12 = (sysio.RegOpenKey)(l_0_11)
  if l_0_12 then
    local l_0_13 = (sysio.GetRegValueAsString)(l_0_12, "ImagePath")
    l_0_13 = (string.lower)(l_0_13)
    if l_0_13 then
      local l_0_14, l_0_15 = (MpCommon.StringRegExpSearch)(l_0_10, l_0_13)
      if not l_0_14 then
        (bm.add_related_string)("Evidence", l_0_9 .. "|" .. l_0_13, bm.RelatedStringBMReport)
        return mp.INFECTED
      end
    else
      do
        ;
        (bm.add_related_string)("Evidence", l_0_9 .. "|Empty", bm.RelatedStringBMReport)
        do return mp.INFECTED end
        do
          local l_0_16 = (sysio.GetRegValueAsDword)(l_0_12, "Start")
          if l_0_16 ~= 2 and l_0_16 ~= 0 then
            (bm.add_related_string)("Evidence", l_0_9 .. "|" .. l_0_16, bm.RelatedStringBMReport)
            return mp.INFECTED
          end
          -- DECOMPILER ERROR at PC146: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC146: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC146: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC146: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC146: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
return mp.CLEAN

