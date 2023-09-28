-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\351b3d31f47a5\0x0000061b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil or l_0_0.ppid == nil then
  return mp.CLEAN
end
if isParentPackageManager(l_0_0.ppid, true) then
  return mp.CLEAN
end
local l_0_1 = nil
if (this_sigattrlog[14]).matched and (this_sigattrlog[14]).utf8p1 ~= nil then
  l_0_1 = (this_sigattrlog[14]).utf8p1
else
  if (this_sigattrlog[15]).matched and (this_sigattrlog[15]).utf8p1 ~= nil then
    l_0_1 = (this_sigattrlog[15]).utf8p1
  else
    if (this_sigattrlog[16]).matched and (this_sigattrlog[16]).utf8p1 ~= nil then
      l_0_1 = (this_sigattrlog[16]).utf8p1
    else
      if (this_sigattrlog[17]).matched and (this_sigattrlog[17]).utf8p1 ~= nil then
        l_0_1 = (this_sigattrlog[17]).utf8p1
      end
    end
  end
end
if l_0_1 then
  (bm.add_related_file)(l_0_1)
end
return mp.INFECTED

