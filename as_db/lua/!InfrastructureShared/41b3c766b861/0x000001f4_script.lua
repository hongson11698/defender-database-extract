-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\41b3c766b861\0x000001f4_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched and (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 then
  local l_0_0 = (this_sigattrlog[3]).utf8p2
  local l_0_1, l_0_2 = (bm.get_process_relationships)()
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    local l_0_8 = (mp.bitand)(l_0_7.reason_ex, 1)
    if l_0_7.image_path ~= nil and l_0_7.ppid ~= nil and not (MpCommon.IsFriendlyProcess)(l_0_7.ppid) and l_0_8 == 1 then
      (bm.trigger_sig)("Behavior:Win32/DCOM.MMC20Application!mmc", l_0_0, l_0_7.ppid)
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.CLEAN
  return l_0_0
end

