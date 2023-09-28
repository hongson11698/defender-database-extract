-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000050a_luac 

-- params : ...
-- function num : 0
if (mp.ispackedwith)("Aspack+") then
  (mp.set_mpattribute)("Lua:FileIsPackedWithAspack")
else
  if (mp.ispackedwith)("ASProtect+") then
    (mp.set_mpattribute)("Lua:FileIsPackedWithASProtect")
  else
    if (mp.ispackedwith)("FSG+") then
      (mp.set_mpattribute)("Lua:FileIsPackedWithFSG")
    else
      if (mp.ispackedwith)("PECompact+") then
        (mp.set_mpattribute)("Lua:FileIsPackedWithPECompact")
      else
        if (mp.ispackedwith)("Petite+") then
          (mp.set_mpattribute)("Lua:FileIsPackedWithPetite")
        else
          if (mp.ispackedwith)("EZip+") then
            (mp.set_mpattribute)("Lua:FileIsPackedWithEZip")
          else
            if (mp.ispackedwith)("Exe32Pack+") then
              (mp.set_mpattribute)("Lua:FileIsPackedWithExe32Pack")
            else
              if (mp.get_mpattribute)("RPF:TopLevelFile") and ((mp.ispackedwith)("AutoIt+") or (mp.get_mpattributesubstring)("Win32/AutoIt") or (mp.get_mpattributesubstring)("PESTATIC:cleanstub_autoitv")) then
                (mp.set_mpattribute)("Lua:FileIsPackedWithAutoIt")
              else
                if (mp.ispackedwith)("AutoHotKey+") then
                  (mp.set_mpattribute)("Lua:FileIsPackedWithAutoHotKey")
                else
                  if (mp.ispackedwith)("RAR+") then
                    (mp.set_mpattribute)("Lua:FileIsPackedWithRarSfx")
                  else
                    if (mp.ispackedwith)("WinZipSfx+") or (mp.ispackedwith)("ZipSfx+") then
                      (mp.set_mpattribute)("Lua:FileIsPackedWithZipSfx")
                    else
                      if (mp.ispackedwith)("CabSfx+") or (mp.ispackedwith)("SfxCab+") or (mp.get_mpattribute)("//Sfx_Installer") then
                        (mp.set_mpattribute)("Lua:FileIsPackedWithCabSfx")
                      else
                        if (mp.ispackedwith)("NSIS+") then
                          (mp.set_mpattribute)("Lua:FileIsPackedWithNSIS")
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
return mp.CLEAN

