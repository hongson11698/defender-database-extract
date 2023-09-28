-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\88b345cb5379\0x0000075c_luac 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[3]).utf8p1
local l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p2)
bm_AddRelatedFileFromCommandLine(l_0_1, nil, nil, 1)
local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
for l_0_6,l_0_7 in ipairs(l_0_2) do
  if (sysio.IsFileExists)(l_0_7) then
    (bm.add_related_file)(l_0_7)
    ;
    (mp.ReportLowfi)(l_0_7, 1212861626)
  end
end
;
(bm.add_related_file)(l_0_0)
;
(mp.ReportLowfi)(l_0_0, 1212861626)
add_parents()
return mp.INFECTED

