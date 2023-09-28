-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaOfficeEopA\0x0000811e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if l_0_0 ~= nil then
  l_0_0 = (string.lower)(l_0_0)
  if l_0_0:match("%->%(msg%)") then
    return mp.CLEAN
  end
  local l_0_1 = {}
  -- DECOMPILER ERROR at PC25: No list found for R1 , SetList fails

  -- DECOMPILER ERROR at PC26: Overwrote pending register: R2 in 'AssignReg'

  local l_0_2 = "ALF:Exploit:O97M/"
  -- DECOMPILER ERROR at PC27: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC28: Overwrote pending register: R4 in 'AssignReg'

  for l_0_6,l_0_7 in ("SLF:Exploit:O97M/")("ALF:SCRIPT:O97M") do
    local l_0_8 = (mp.enum_mpattributesubstring)(l_0_7)
    if l_0_8 ~= nil and type(l_0_8) == "table" and l_0_2 >= 3 then
      return mp.INFECTED
    end
  end
  local l_0_9 = {}
  -- DECOMPILER ERROR at PC61: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC62: Overwrote pending register: R4 in 'AssignReg'

  local l_0_10 = "TEL:Exploit:O97M"
  -- DECOMPILER ERROR at PC63: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC64: Overwrote pending register: R6 in 'AssignReg'

  for l_0_14,l_0_15 in ("SCPT:Exploit:O97")("TEL:Exploit:RTF") do
    -- DECOMPILER ERROR at PC67: Overwrote pending register: R10 in 'AssignReg'

    -- DECOMPILER ERROR at PC69: Overwrote pending register: R11 in 'AssignReg'

    local l_0_16 = (("SCPT:RTF/CVE-").enum_mpattributesubstring)("SCPT:TrojanDownloader:O97M")
    -- DECOMPILER ERROR at PC74: Overwrote pending register: R12 in 'AssignReg'

    if l_0_16 ~= nil and type("Exploit:O97M") == "table" and l_0_2 == 1 and l_0_10 >= 4 then
      return mp.INFECTED
    end
  end
end
do
  do
    -- DECOMPILER ERROR at PC90: Overwrote pending register: R1 in 'AssignReg'

    do return l_0_1 end
    -- WARNING: undefined locals caused missing assignments!
  end
end

