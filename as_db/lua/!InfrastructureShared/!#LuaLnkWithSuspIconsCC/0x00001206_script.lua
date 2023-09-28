-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaLnkWithSuspIconsCC\0x00001206_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("Lua:LNK_Settings!RunMinimized") then
  return mp.CLEAN
end
local l_0_0, l_0_1 = pcall(mp.GetLnkInfo)
if l_0_0 == false or l_0_1 == nil then
  return mp.CLEAN
end
do
  local l_0_2, l_0_6 = l_0_1.Arguments or nil
  do
    local l_0_3, l_0_7 = , l_0_1.BasePath or nil
    do
      local l_0_4, l_0_8 = nil
      do
        local l_0_5, l_0_9 = nil
        do
          local l_0_10 = nil
          local l_0_11 = nil
          -- DECOMPILER ERROR at PC43: Confused about usage of register: R5 in 'UnsetPending'

          if l_0_1.IconLocation or nil ~= nil then
            local l_0_12 = nil
            if (l_0_1.IconLocation or nil):byte() < 65 or (l_0_1.IconLocation or nil):byte() > 122 then
              local l_0_13 = l_0_1.RelativePath or nil
              -- DECOMPILER ERROR at PC52: Confused about usage of register: R5 in 'UnsetPending'

              -- DECOMPILER ERROR at PC54: Confused about usage of register: R5 in 'UnsetPending'

              for l_0_17 = 1, #({(string.byte)(l_0_1.IconLocation or nil, 1, #(l_0_1.IconLocation or nil))}) do
                local l_0_14, l_0_15, l_0_16, l_0_17 = , l_0_1.IconIndex or nil, 0
                -- DECOMPILER ERROR at PC61: Confused about usage of register: R13 in 'UnsetPending'

                -- DECOMPILER ERROR at PC61: Confused about usage of register: R9 in 'UnsetPending'

                -- DECOMPILER ERROR at PC64: Confused about usage of register: R13 in 'UnsetPending'

                -- DECOMPILER ERROR at PC64: Confused about usage of register: R9 in 'UnsetPending'

                -- DECOMPILER ERROR at PC67: Confused about usage of register: R13 in 'UnsetPending'

                if ({(string.byte)(l_0_1.IconLocation or nil, 1, #(l_0_1.IconLocation or nil))})[#(l_0_1.IconLocation or nil)] >= 65 and ({(string.byte)(l_0_1.IconLocation or nil, 1, #(l_0_1.IconLocation or nil))})[#(l_0_1.IconLocation or nil)] <= 122 then
                  l_0_16 = #(l_0_1.IconLocation or nil)
                  break
                end
              end
            end
            do
              do
                -- DECOMPILER ERROR at PC70: Confused about usage of register: R7 in 'UnsetPending'

                if l_0_16 >= 1 then
                  (mp.set_mpattribute)("NotReadableCharsInIcnLoc")
                end
                -- DECOMPILER ERROR at PC76: Confused about usage of register: R5 in 'UnsetPending'

                ;
                (mp.set_mpattribute)("HasIconLocation!" .. (l_0_14:match("\\([^\\]+)$")):lower())
                -- DECOMPILER ERROR at PC88: Confused about usage of register: R6 in 'UnsetPending'

                -- DECOMPILER ERROR at PC93: Confused about usage of register: R6 in 'UnsetPending'

                if l_0_15 ~= nil then
                  (mp.set_mpattribute)("HasIconIndex!" .. l_0_15)
                end
                local l_0_18 = nil
                local l_0_19 = nil
                if (l_0_19 == nil or ((StringEndsWith(l_0_19, ".js") or StringEndsWith(l_0_19, ".cmd") or StringEndsWith(l_0_19, ".bat") or StringEndsWith(l_0_19, ".vbs")) and true ~= false) or l_0_11 ~= nil) then
                  l_0_11 = l_0_11:lower()
                end
                if ((not StringEndsWith(l_0_11, ".js") and not StringEndsWith(l_0_11, ".cmd") and not StringEndsWith(l_0_11, ".bat") and not StringEndsWith(l_0_11, ".vbs") and not contains(l_0_11, {"odbcconf", "rundll32", "regsvr", "powershell", "calc", "wscript", "cscript", "mshta"})) or true == false) and l_0_18 ~= nil then
                  l_0_18 = l_0_18:lower()
                  -- DECOMPILER ERROR at PC184: Confused about usage of register: R8 in 'UnsetPending'

                end
                -- DECOMPILER ERROR at PC191: Confused about usage of register: R5 in 'UnsetPending'

                -- DECOMPILER ERROR at PC197: Confused about usage of register: R6 in 'UnsetPending'

                if not contains(l_0_18, {"odbcconf", "rundll32", "regsvr", "powershell", "calc", "wscript", "cscript", "mshta"}) or true == true then
                  local l_0_20 = (((l_0_14:match("\\([^\\]+)$")):lower()):match("\\([^\\]+)$")):lower()
                  local l_0_21 = l_0_15 + 1
                  -- DECOMPILER ERROR at PC214: Confused about usage of register: R7 in 'UnsetPending'

                  -- DECOMPILER ERROR at PC220: Confused about usage of register: R10 in 'UnsetPending'

                  -- DECOMPILER ERROR at PC223: Confused about usage of register: R10 in 'UnsetPending'

                  -- DECOMPILER ERROR at PC232: Confused about usage of register: R10 in 'UnsetPending'

                  -- DECOMPILER ERROR at PC237: Confused about usage of register: R10 in 'UnsetPending'

                  if type(({
[1] = {"explorer.exe", "write.exe", "zipfldr.dll"}
, [2] = "zipfldr.dll", [4] = "shell32.dll", [5] = "imageres.dll", [37] = "shell32.dll", [39] = "shell32.dll", [66] = "imageres.dll", [154] = "imageres.dll", [14] = "msedge.exe"})[l_0_21]) == "table" or (({
[1] = {"explorer.exe", "write.exe", "zipfldr.dll"}
, [2] = "zipfldr.dll", [4] = "shell32.dll", [5] = "imageres.dll", [37] = "shell32.dll", [39] = "shell32.dll", [66] = "imageres.dll", [154] = "imageres.dll", [14] = "msedge.exe"})[l_0_21]):sub(1, #({
[1] = {"explorer.exe", "write.exe", "zipfldr.dll"}
, [2] = "zipfldr.dll", [4] = "shell32.dll", [5] = "imageres.dll", [37] = "shell32.dll", [39] = "shell32.dll", [66] = "imageres.dll", [154] = "imageres.dll", [14] = "msedge.exe"})[l_0_21] - (l_0_16 - 1)) ~= l_0_20 or type(({
[1] = {"explorer.exe", "write.exe", "zipfldr.dll"}
, [2] = "zipfldr.dll", [4] = "shell32.dll", [5] = "imageres.dll", [37] = "shell32.dll", [39] = "shell32.dll", [66] = "imageres.dll", [154] = "imageres.dll", [14] = "msedge.exe"})[l_0_21]) == "table" then
                    for i = 1, #({
[1] = {"explorer.exe", "write.exe", "zipfldr.dll"}
, [2] = "zipfldr.dll", [4] = "shell32.dll", [5] = "imageres.dll", [37] = "shell32.dll", [39] = "shell32.dll", [66] = "imageres.dll", [154] = "imageres.dll", [14] = "msedge.exe"})[l_0_21] do
                      local l_0_22, l_0_23, l_0_24 = , true
                      -- DECOMPILER ERROR at PC241: Confused about usage of register: R10 in 'UnsetPending'

                      -- DECOMPILER ERROR at PC245: Confused about usage of register: R10 in 'UnsetPending'

                      if ((({
[1] = {"explorer.exe", "write.exe", "zipfldr.dll"}
, [2] = "zipfldr.dll", [4] = "shell32.dll", [5] = "imageres.dll", [37] = "shell32.dll", [39] = "shell32.dll", [66] = "imageres.dll", [154] = "imageres.dll", [14] = "msedge.exe"})[l_0_21])[i]):sub(1, #(({
[1] = {"explorer.exe", "write.exe", "zipfldr.dll"}
, [2] = "zipfldr.dll", [4] = "shell32.dll", [5] = "imageres.dll", [37] = "shell32.dll", [39] = "shell32.dll", [66] = "imageres.dll", [154] = "imageres.dll", [14] = "msedge.exe"})[l_0_21])[i] - l_0_22) == l_0_20 then
                        l_0_24 = true
                        break
                      end
                    end
                  end
                  do
                    do
                      -- DECOMPILER ERROR at PC255: Confused about usage of register: R9 in 'UnsetPending'

                      if l_0_24 == true then
                        return mp.INFECTED
                      end
                      return mp.CLEAN
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

