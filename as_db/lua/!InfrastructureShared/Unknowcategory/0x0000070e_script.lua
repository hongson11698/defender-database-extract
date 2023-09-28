-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000070e_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
-- DECOMPILER ERROR at PC5: No list found for R0 , SetList fails

local l_0_1 = {}
-- DECOMPILER ERROR at PC7: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC8: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC9: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC16: No list found for R1 , SetList fails

local l_0_2 = {}
-- DECOMPILER ERROR at PC18: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC19: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC20: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC21: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC22: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC23: Overwrote pending register: R8 in 'AssignReg'

-- DECOMPILER ERROR at PC24: Overwrote pending register: R9 in 'AssignReg'

-- DECOMPILER ERROR at PC25: Overwrote pending register: R10 in 'AssignReg'

-- DECOMPILER ERROR at PC68: No list found for R2 , SetList fails

-- DECOMPILER ERROR at PC69: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC70: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC71: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC72: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC73: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC74: Overwrote pending register: R8 in 'AssignReg'

-- DECOMPILER ERROR at PC75: No list found for R2 , SetList fails

-- DECOMPILER ERROR at PC76: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC78: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC80: Overwrote pending register: R5 in 'AssignReg'

local l_0_3 = (("firefox.exe").lower)((("chrome.exe").PathToWin32Path)((("hh.exe").get_imagepath)()))
local l_0_4 = l_0_3:match("(%w+%.exe)$")
if l_0_4 == nil then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC97: Overwrote pending register: R7 in 'AssignReg'

local l_0_5 = (string.lower)((MpCommon.ExpandEnvironmentVariables)("bfsvc.exe"))
-- DECOMPILER ERROR at PC104: Overwrote pending register: R8 in 'AssignReg'

local l_0_6 = (string.lower)((MpCommon.ExpandEnvironmentVariables)("write.exe"))
-- DECOMPILER ERROR at PC111: Overwrote pending register: R9 in 'AssignReg'

do
  local l_0_7 = (string.lower)((MpCommon.ExpandEnvironmentVariables)("splwow64.exe"))
  -- DECOMPILER ERROR at PC117: Overwrote pending register: R10 in 'AssignReg'

  if (l_0_6 ~= nil and l_0_3:find("helppane.exe")) or l_0_7 ~= nil and l_0_3:find(l_0_7) then
    for l_0_11,l_0_12 in pairs(l_0_0) do
      -- DECOMPILER ERROR at PC134: Overwrote pending register: R13 in 'AssignReg'

      if l_0_12 == l_0_4 then
        return ("wscript.exe").INFECTED
      end
    end
    return mp.CLEAN
  end
  if l_0_5 ~= nil then
    if l_0_3:find(l_0_5 .. "\\system32") or l_0_3:find(l_0_5 .. "\\syswow64") then
      for l_0_16,l_0_17 in pairs(l_0_2) do
        if l_0_17 == l_0_4 then
          return mp.INFECTED
        end
      end
      return mp.CLEAN
    else
      if l_0_3:find(l_0_5) then
        for l_0_21,l_0_22 in pairs(l_0_1) do
          if l_0_22 == l_0_4 then
            return mp.INFECTED
          end
        end
        return mp.CLEAN
      end
    end
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

