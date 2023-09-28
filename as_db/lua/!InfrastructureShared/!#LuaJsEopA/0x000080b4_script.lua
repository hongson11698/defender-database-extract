-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaJsEopA\0x000080b4_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
-- DECOMPILER ERROR at PC5: No list found for R0 , SetList fails

-- DECOMPILER ERROR at PC6: Overwrote pending register: R1 in 'AssignReg'

local l_0_1 = "ALF:Trojan:HTML/Phish"
-- DECOMPILER ERROR at PC7: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC8: Overwrote pending register: R3 in 'AssignReg'

for l_0_5,l_0_6 in ("ALF:Trojan:HTML/Obfuse")("ALF:Trojan:JS/Phish") do
  local l_0_7 = (mp.enum_mpattributesubstring)(l_0_6)
  if l_0_7 ~= nil and type(l_0_7) == "table" then
    l_0_1 = l_0_1 + #l_0_7
    if l_0_1 >= 3 then
      return mp.INFECTED
    end
  end
end
local l_0_8 = {}
-- DECOMPILER ERROR at PC40: No list found for R2 , SetList fails

-- DECOMPILER ERROR at PC41: Overwrote pending register: R3 in 'AssignReg'

do
  local l_0_9 = "SCRIPT:JS/JSObfuscator"
  -- DECOMPILER ERROR at PC42: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC43: Overwrote pending register: R5 in 'AssignReg'

  for l_0_13,l_0_14 in ("SCPT:Trojan:HTML/Phish")("SCPT:TrojanDownloader:HTML/Obfuse") do
    -- DECOMPILER ERROR at PC46: Overwrote pending register: R9 in 'AssignReg'

    -- DECOMPILER ERROR at PC48: Overwrote pending register: R10 in 'AssignReg'

    local l_0_15 = (("SCRIPT:JS/Eval").enum_mpattributesubstring)("HtmlWithEmbedded")
    if l_0_15 ~= nil and type(l_0_15) == "table" then
      if l_0_1 == 0 and l_0_9 >= 5 then
        return mp.INFECTED
      else
        if l_0_1 >= 1 and l_0_9 >= 4 then
          return mp.INFECTED
        end
      end
    end
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

