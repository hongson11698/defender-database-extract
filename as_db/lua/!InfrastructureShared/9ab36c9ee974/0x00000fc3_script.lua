-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\9ab36c9ee974\0x00000fc3_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
  local l_0_1 = (string.lower)((this_sigattrlog[1]).utf8p2)
  local l_0_2 = l_0_1:match("remoteip:(.-):?%d?%d?%d?%d?%d?;?$")
  if l_0_2 and l_0_0 ~= "" then
    AppendToRollingQueue("SuspAttackServer", l_0_2, "From:FepyDropper.A", 5000)
    l_0_0 = (string.lower)((MpCommon.PathToWin32Path)(l_0_0))
    local l_0_3 = {}
    -- DECOMPILER ERROR at PC51: No list found for R3 , SetList fails

    -- DECOMPILER ERROR at PC52: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC53: Overwrote pending register: R5 in 'AssignReg'

    ;
    ("T1570:remote_dropped_FePyDll")("T1021.002:remote_dropped_FePyDll", l_0_3)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

