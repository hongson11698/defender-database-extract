-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000080bf_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil and (string.lower)((string.sub)(l_0_0, -9)) ~= "\\w3wp.exe" then
  return mp.CLEAN
end
local l_0_1 = nil
if (this_sigattrlog[1]).matched then
  l_0_1 = (this_sigattrlog[1]).utf8p1
else
  if (this_sigattrlog[2]).matched then
    l_0_1 = (this_sigattrlog[2]).utf8p1
  else
    if (this_sigattrlog[3]).matched then
      l_0_1 = (this_sigattrlog[3]).utf8p1
    else
      if (this_sigattrlog[4]).matched then
        l_0_1 = (this_sigattrlog[4]).utf8p1
      end
    end
  end
end
if l_0_1 ~= nil then
  local l_0_2 = (string.sub)(l_0_1, -4)
  local l_0_3 = "|.asp|aspx|ashx|asmx|"
  if (string.find)(l_0_3, l_0_2, 1, true) == nil then
    return mp.CLEAN
  end
end
do
  local l_0_4 = (bm.get_current_process_startup_info)()
  local l_0_5 = l_0_4.command_line
  if not (string.find)(l_0_5, "-ap \"MSExchange", 1, true) then
    return mp.CLEAN
  end
  if (sysio.IsFileExists)(l_0_1) then
    (mp.ReportLowfi)(l_0_1, 560784057)
    ;
    (bm.add_related_file)(l_0_1)
    ;
    (bm.add_threat_file)(l_0_1)
  end
  return mp.INFECTED
end

