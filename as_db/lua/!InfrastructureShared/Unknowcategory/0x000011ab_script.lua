-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000011ab_luac 

-- params : ...
-- function num : 0
IsStrLower = function(l_1_0, l_1_1)
  -- function num : 0_0
  if l_1_0 == nil or l_1_1 <= 0 or l_1_1 > 128 then
    return false
  end
  for l_1_5 = 1, l_1_1 do
    local l_1_6 = (string.byte)(l_1_0, l_1_5)
    if l_1_6 < 97 or l_1_6 > 122 then
      return false
    end
  end
  return true
end

IsDofoilPath = function(l_2_0, l_2_1)
  -- function num : 0_1
  do return (string.len)(l_2_0) == 8 and (string.len)(l_2_1) == 12 and IsStrLower(l_2_0, 8) == true and IsStrLower(l_2_1, 8) == true end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if (l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
  if (string.lower)(l_0_1:sub(-25, -9)) == "\\appdata\\roaming\\" or (string.lower)(l_0_1:sub(-26, -9)) == "\\application data\\" then
    local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILE_ATTRIBUTES)
    if l_0_2 ~= 4294967295 then
      l_0_2 = (mp.bitand)(l_0_2, 3)
      if l_0_2 == 3 then
        (mp.set_mpattribute)("Lua:SuspiciousDropExeAttrib.C")
      else
        if l_0_2 ~= 0 then
          if IsDofoilPath(l_0_1:sub(-8), (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)) == true then
            (mp.set_mpattribute)("Lua:DofoilFilename.A")
          end
          ;
          (mp.set_mpattribute)("Lua:SuspiciousDropExeAttrib.D")
          return mp.INFECTED
        end
      end
    end
  end
end
do
  return mp.CLEAN
end

