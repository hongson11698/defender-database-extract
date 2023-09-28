-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000066be_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 293417 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("LoD:VirTool:Win32/Obfuscator.ACV.2")
;
(pe.set_peattribute)("deep_analysis", true)
;
(pe.reemulate)()
return mp.INFECTED

