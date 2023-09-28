-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPEEopA\0x000081fd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if l_0_0 ~= nil then
  l_0_0 = (string.lower)(l_0_0)
  local l_0_1 = (string.sub)(l_0_0, -4)
  if l_0_0:match("%->.+/") or l_0_0:match("%->.+\\") or l_0_0:match("%->.+%.cab%->") then
    return mp.CLEAN
  end
  if l_0_1 == ".exe" or l_0_1 == ".scr" or l_0_1 == ".com" then
    local l_0_2 = {}
    -- DECOMPILER ERROR at PC45: No list found for R2 , SetList fails

    -- DECOMPILER ERROR at PC46: Overwrote pending register: R3 in 'AssignReg'

    local l_0_3 = "ALF:Trojan:Win32/"
    -- DECOMPILER ERROR at PC47: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC48: Overwrote pending register: R5 in 'AssignReg'

    for l_0_7,l_0_8 in ("SLF:Trojan:Win32/")("Lowfi:HSTR:Win32/") do
      local l_0_9 = (mp.enum_mpattributesubstring)(l_0_8)
      if l_0_9 ~= nil and type(l_0_9) == "table" and l_0_3 >= 2 then
        return mp.INFECTED
      end
    end
    local l_0_10 = {}
    -- DECOMPILER ERROR at PC84: No list found for R4 , SetList fails

    -- DECOMPILER ERROR at PC85: Overwrote pending register: R5 in 'AssignReg'

    local l_0_11 = "TEL:Win32/"
    -- DECOMPILER ERROR at PC86: Overwrote pending register: R6 in 'AssignReg'

    -- DECOMPILER ERROR at PC87: Overwrote pending register: R7 in 'AssignReg'

    for l_0_15,l_0_16 in ("TELPER:Trojan:Win32/")("HSTR:Win32/") do
      -- DECOMPILER ERROR at PC90: Overwrote pending register: R11 in 'AssignReg'

      -- DECOMPILER ERROR at PC92: Overwrote pending register: R12 in 'AssignReg'

      local l_0_17 = (("HSTR:TrojanDropper:Win32/").enum_mpattributesubstring)("HSTR:TrojanDownloader:Win32/")
      -- DECOMPILER ERROR at PC97: Overwrote pending register: R13 in 'AssignReg'

      if l_0_17 ~= nil and type("TEL:Trojan:Win32/") == "table" then
        if l_0_3 == 0 and l_0_11 >= 3 then
          return mp.INFECTED
        else
          if l_0_3 == 1 and l_0_11 >= 2 then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
do
  do
    -- DECOMPILER ERROR at PC121: Overwrote pending register: R1 in 'AssignReg'

    do return l_0_1 end
    -- WARNING: undefined locals caused missing assignments!
  end
end

