-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007fdc_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
if l_0_0 ~= nil and (string.find)(l_0_0, "//b", 1, true) and (string.find)(l_0_0, "//e:jscript", 1, true) then
  local l_0_1 = ((mp.GetExecutablesFromCommandLine)(l_0_0))
  local l_0_2, l_0_3 = nil, nil
  for l_0_7,l_0_8 in ipairs(l_0_1) do
    l_0_2 = (mp.ContextualExpandEnvironmentVariables)("%temp%\\") .. l_0_8
    l_0_3 = (mp.ContextualExpandEnvironmentVariables)("%temp%\\low\\") .. l_0_8
    if (sysio.IsFileExists)(l_0_8) then
      (bm.add_related_file)(l_0_8)
      ;
      (mp.ReportLowfi)(l_0_8, 3307547556)
    else
      if (sysio.IsFileExists)(l_0_2) then
        (bm.add_related_file)(l_0_2)
        ;
        (mp.ReportLowfi)(l_0_2, 3307547556)
      else
        if (sysio.IsFileExists)(l_0_3) then
          (bm.add_related_file)(l_0_3)
          ;
          (mp.ReportLowfi)(l_0_3, 3307547556)
        end
      end
    end
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

