-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000009a8_luac 

-- params : ...
-- function num : 0
if (MpCommon.NidSearch)(mp.NID_DISABLE_NW_REPORTING, 1) then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC26: Overwrote pending register: R0 in 'AssignReg'

if (MpCommon.NidSearch)(mp.NID_ENABLE_NW_REPORTING, 1) then
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
    if l_0_0 ~= nil then
      local l_0_1 = nil
      if (string.match)(l_0_0, "^\"%z[^\"]*\"%z") ~= nil then
        l_0_1 = (string.gsub)((string.match)(l_0_0, "\"%z[^\"]*\"%z"), "\"%z", "")
      else
        if (string.match)(l_0_0, "%.%ze%zx%ze%z") ~= nil then
          l_0_1 = (string.match)(l_0_0, "%.%ze%zx%ze%z")
        else
          if (string.match)((string.lower)(l_0_0), "%.%zd%zl%zl%z") ~= nil then
            l_0_1 = (string.match)(l_0_0, "%.%zd%zl%zl%z")
          end
        end
      end
      if l_0_1 ~= nil then
        (mp.ReportLowfi)(l_0_1, 1795012340)
      end
    end
  end
  do
    do return mp.INFECTED end
    return mp.CLEAN
  end
end

