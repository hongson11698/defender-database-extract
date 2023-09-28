-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000008b1_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 and ((string.find)(l_0_0, "\\steamapps\\common\\", 1, true) or (string.find)(l_0_0, "\\microsoft\\teams\\", 1, true) or (string.find)(l_0_0, "\\microsoft vs code\\", 1, true) or (string.find)(l_0_0, "\\steam\\", 1, true) or (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "t2gp launcher", 1, true) or (string.find)(l_0_0, "paradox interactive", 1, true) or (string.find)(l_0_0, "\\google\\chrome\\", 1, true)) then
  return mp.CLEAN
end
local l_0_1 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  l_0_1 = (this_sigattrlog[1]).utf8p1
end
local l_0_2 = nil
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
  l_0_2 = (this_sigattrlog[2]).utf8p1
end
local l_0_3 = nil
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil then
  l_0_3 = (this_sigattrlog[3]).utf8p1
end
if l_0_1 ~= l_0_2 or l_0_1 ~= l_0_3 then
  return mp.CLEAN
end
local l_0_4, l_0_5 = (bm.get_process_relationships)()
for l_0_9,l_0_10 in ipairs(l_0_5) do
  local l_0_11 = (mp.bitand)(l_0_10.reason_ex, bm.RELATIONSHIP_CREATED)
  if l_0_11 == bm.RELATIONSHIP_CREATED and (string.find)((string.lower)(l_0_10.image_path), (string.lower)(l_0_1), 1, true) then
    (MpCommon.TurnNriOnProcess)(l_0_10.ppid)
    ;
    (bm.request_SMS)(l_0_10.ppid, "M")
    local l_0_12, l_0_13 = (string.match)(l_0_10.ppid, "^pid:(%w+),ProcessStart:(%w+)$")
    local l_0_14 = tonumber(l_0_12)
    local l_0_15 = tonumber(l_0_13)
    local l_0_16, l_0_17 = (mp.bsplit)(l_0_15, 32)
    local l_0_18 = (string.format)("ppids:{{%d,%d,%d}}\000", l_0_14, l_0_16, l_0_17)
    ;
    (mp.TriggerScanResource)("ems", l_0_18, mp.SCANSOURCE_RTSIG, 5000)
    return mp.INFECTED
  end
end
return mp.CLEAN

