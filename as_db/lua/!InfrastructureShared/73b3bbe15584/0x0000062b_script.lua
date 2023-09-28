-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\73b3bbe15584\0x0000062b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 == nil or l_0_0 > 10485760 then
  return mp.CLEAN
end
local l_0_1 = (bm.get_current_process_startup_info)()
if l_0_1 == nil and l_0_1.ppid == nil then
  return mp.CLEAN
end
if isParentPackageManager(l_0_1.ppid, true) then
  return mp.CLEAN
end
local l_0_2 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  l_0_2 = (string.lower)((this_sigattrlog[1]).utf8p1)
end
if l_0_2 == nil or #l_0_2 < 4 then
  return mp.CLEAN
end
do
  local l_0_3 = {}
  -- DECOMPILER ERROR at PC63: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC64: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC65: Overwrote pending register: R5 in 'AssignReg'

  for l_0_7,l_0_8 in ("/var/tmp/")("/tmp/") do
    -- DECOMPILER ERROR at PC68: Overwrote pending register: R9 in 'AssignReg'

    if ("/var/run/")(l_0_2, 1, #l_0_8) == l_0_8 then
      (bm.add_related_file)(l_0_2)
      return mp.INFECTED
    end
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

