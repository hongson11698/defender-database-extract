-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d4b3e93d5ebf\0x0000092a_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
local l_0_1 = (bm.get_current_process_startup_info)()
l_0_0.imagePath = (bm.get_imagepath)()
l_0_0.friendly = (MpCommon.IsFriendlyProcess)(l_0_1.ppid)
l_0_0.process_relationships = (bm.get_process_relationships)()
if (this_sigattrlog[1]).matched then
  l_0_0.BCDPath = (this_sigattrlog[1]).utf8p1
  l_0_0.p2Data = (this_sigattrlog[1]).utf8p2
else
  if (this_sigattrlog[2]).matched then
    l_0_0.BCDPath = (this_sigattrlog[2]).utf8p1
    l_0_0.p2Data = (this_sigattrlog[2]).utf8p2
  end
end
;
(bm.add_related_file)(l_0_0.BCDPath)
;
(bm.add_related_string)("ChangeFileData", safeJsonSerialize(l_0_0), bm.RelatedStringBMReport)
return mp.INFECTED

