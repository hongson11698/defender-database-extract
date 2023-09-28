-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaMSILEopD\0x0000829f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if l_0_0 ~= nil then
  l_0_0 = (string.lower)(l_0_0)
  local l_0_1 = (string.sub)(l_0_0, -4)
  if (string.match)(l_0_0, "%->%(part.*%)%->") and (l_0_1 == ".exe" or l_0_1 == ".scr" or l_0_1 == ".com") then
    local l_0_2 = {}
    -- DECOMPILER ERROR at PC47: No list found for R2 , SetList fails

    -- DECOMPILER ERROR at PC48: Overwrote pending register: R3 in 'AssignReg'

    local l_0_3 = "ALF:Trojan:MSIL/"
    -- DECOMPILER ERROR at PC49: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC50: Overwrote pending register: R5 in 'AssignReg'

    for l_0_7,l_0_8 in ("SLF:Trojan:MSIL/")("ALF:JASYP:Trojan:MSIL/") do
      -- DECOMPILER ERROR at PC53: Overwrote pending register: R9 in 'AssignReg'

      -- DECOMPILER ERROR at PC55: Overwrote pending register: R10 in 'AssignReg'

      local l_0_9 = (("ALF:HSTR:Trojan:MSIL").enum_mpattributesubstring)("Lowfi:HSTR:Win32/AgileDotNetObfuscator")
      -- DECOMPILER ERROR at PC60: Overwrote pending register: R11 in 'AssignReg'

      if l_0_9 ~= nil and type("ALF:TrojanDownloader:MSIL") == "table" and l_0_3 >= 2 then
        return mp.INFECTED
      end
    end
    local l_0_10 = {}
    -- DECOMPILER ERROR at PC81: Overwrote pending register: R12 in 'AssignReg'

    -- DECOMPILER ERROR at PC82: Overwrote pending register: R13 in 'AssignReg'

    -- DECOMPILER ERROR at PC83: Overwrote pending register: R14 in 'AssignReg'

    -- DECOMPILER ERROR at PC84: Overwrote pending register: R15 in 'AssignReg'

    -- DECOMPILER ERROR at PC85: Overwrote pending register: R16 in 'AssignReg'

    -- DECOMPILER ERROR at PC86: Overwrote pending register: R17 in 'AssignReg'

    -- DECOMPILER ERROR at PC87: Overwrote pending register: R18 in 'AssignReg'

    -- DECOMPILER ERROR at PC88: Overwrote pending register: R19 in 'AssignReg'

    -- DECOMPILER ERROR at PC89: Overwrote pending register: R20 in 'AssignReg'

    -- DECOMPILER ERROR at PC100: No list found for R4 , SetList fails

    -- DECOMPILER ERROR at PC101: Overwrote pending register: R5 in 'AssignReg'

    local l_0_11 = "HSTR:Trojan:MSIL"
    -- DECOMPILER ERROR at PC102: Overwrote pending register: R6 in 'AssignReg'

    -- DECOMPILER ERROR at PC103: Overwrote pending register: R7 in 'AssignReg'

    for l_0_15,l_0_16 in ("Packed:Confuser")("SIGATTR:MSIL") do
      -- DECOMPILER ERROR at PC106: Overwrote pending register: R11 in 'AssignReg'

      -- DECOMPILER ERROR at PC108: Overwrote pending register: R12 in 'AssignReg'

      local l_0_17 = (("Trojan:MSIL/AgentTesla").enum_mpattributesubstring)("ALF:HackTool:MSIL")
      -- DECOMPILER ERROR at PC113: Overwrote pending register: R13 in 'AssignReg'

      if l_0_17 ~= nil and type("SIGATTR:VirTool:MSIL") == "table" then
        if l_0_3 == 0 and l_0_11 >= 3 then
          return mp.INFECTED
        else
          if l_0_3 == 1 and l_0_11 >= 2 then
            return mp.INFECTED
          end
        end
      end
    end
    local l_0_18 = {}
    -- DECOMPILER ERROR at PC138: No list found for R6 , SetList fails

    -- DECOMPILER ERROR at PC139: Overwrote pending register: R7 in 'AssignReg'

    for l_0_22,l_0_23 in ("HSTR:MSIL/")(l_0_18) do
      local l_0_24 = (mp.enum_mpattributesubstring)(l_0_23)
      -- DECOMPILER ERROR at PC150: Overwrote pending register: R14 in 'AssignReg'

      -- DECOMPILER ERROR at PC155: Overwrote pending register: R5 in 'AssignReg'

      if l_0_24 ~= nil and type("SLFPER:MSIL") == "table" then
        if l_0_3 == 0 and l_0_11 >= 4 then
          return mp.INFECTED
        else
          if l_0_3 == 1 and l_0_11 >= 3 then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
do
  do
    -- DECOMPILER ERROR at PC174: Overwrote pending register: R1 in 'AssignReg'

    do return l_0_1 end
    -- WARNING: undefined locals caused missing assignments!
  end
end

