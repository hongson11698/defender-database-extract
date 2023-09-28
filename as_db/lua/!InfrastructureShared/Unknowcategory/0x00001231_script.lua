-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001231_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
;
(mp.readprotection)(false)
if l_0_0 < 512 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 9) ~= 1162035498 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 13) ~= 336865834 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 33) ~= 1163021909 then
  return mp.CLEAN
end
local l_0_1 = (mp.readu_u32)(headerpage, 61)
local l_0_2 = (mp.readu_u16)(headerpage, 87)
local l_0_3 = l_0_2 + 88 + l_0_1
if l_0_0 < l_0_3 then
  return mp.CLEAN
end
local l_0_4 = 0
if l_0_0 == l_0_3 then
  l_0_4 = 1
else
  if l_0_3 < l_0_0 then
    local l_0_5 = (mp.readfile)(l_0_3, 32)
    l_0_5 = (string.gsub)(l_0_5, "%z", "")
    if (string.find)(l_0_5, "**ACE**") then
      l_0_4 = 1
    end
  end
end
do
  if l_0_4 == 0 then
    return mp.CLEAN
  end
  ;
  (mp.set_mpattribute)("Lua:SingleFileInACE")
  ;
  (mp.UfsSetMetadataBool)("Lua:SingleFileInACE!ufs", true)
  if l_0_2 > 100 then
    return mp.CLEAN
  end
  local l_0_6 = (mp.readfile)(88, l_0_2)
  local l_0_7 = (string.lower)((string.sub)(l_0_6, -4))
  local l_0_8 = (string.lower)((string.sub)(l_0_6, -3))
  if l_0_7 == ".zip" then
    (mp.set_mpattribute)("Lua:SingleZipInACE")
  else
    if l_0_7 == ".vbs" then
      (mp.set_mpattribute)("Lua:SingleVBSInACE")
      ;
      (mp.set_mpattribute)("Lua:SingleSuspiciousExtensionInACE")
    else
      if l_0_7 == ".lnk" then
        (mp.set_mpattribute)("Lua:SingleLNKInACE")
        ;
        (mp.set_mpattribute)("Lua:SingleSuspiciousExtensionInACE")
      else
        if l_0_7 == ".wsf" then
          (mp.set_mpattribute)("Lua:SingleWSFInACE")
          ;
          (mp.set_mpattribute)("Lua:SingleSuspiciousExtensionInACE")
        else
          if l_0_7 == ".vbe" then
            (mp.set_mpattribute)("Lua:SingleVBEInACE")
            ;
            (mp.set_mpattribute)("Lua:SingleSuspiciousExtensionInACE")
          else
            if l_0_7 == ".jse" then
              (mp.set_mpattribute)("Lua:SingleJSEInACE")
              ;
              (mp.set_mpattribute)("Lua:SingleSuspiciousExtensionInACE")
            else
              if l_0_7 == "html" then
                (mp.set_mpattribute)("Lua:SingleHTAInACE")
                ;
                (mp.set_mpattribute)("Lua:SingleSuspiciousExtensionInACE")
              else
                if l_0_7 == ".exe" then
                  (mp.set_mpattribute)("Lua:SingleEXEInACE")
                  ;
                  (mp.set_mpattribute)("Lua:SingleSuspiciousExtensionInACE")
                else
                  if l_0_7 == ".dll" then
                    (mp.set_mpattribute)("Lua:SingleDLLInACE")
                  else
                    if l_0_7 == ".com" then
                      (mp.set_mpattribute)("Lua:SingleCOMInACE")
                      ;
                      (mp.set_mpattribute)("Lua:SingleSuspiciousExtensionInACE")
                    else
                      if l_0_7 == ".ps1" then
                        (mp.set_mpattribute)("Lua:SinglePSInACE")
                        ;
                        (mp.set_mpattribute)("Lua:SingleSuspiciousExtensionInACE")
                      else
                        if l_0_7 == ".bat" then
                          (mp.set_mpattribute)("Lua:SingleBATInACE")
                          ;
                          (mp.set_mpattribute)("Lua:SingleSuspiciousExtensionInACE")
                        else
                          if l_0_7 == ".rar" then
                            (mp.set_mpattribute)("Lua:SingleRarInACE")
                          else
                            if l_0_7 == ".ace" then
                              (mp.set_mpattribute)("Lua:SingleACEInACE")
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
      end
    end
  end
  if l_0_8 == ".js" then
    (mp.set_mpattribute)("Lua:SingleJSInACE")
    ;
    (mp.set_mpattribute)("Lua:SingleSuspiciousExtensionInACE")
  else
    if l_0_8 == ".7z" then
      (mp.set_mpattribute)("Lua:Single7zInACE")
    end
  end
  return mp.CLEAN
end

