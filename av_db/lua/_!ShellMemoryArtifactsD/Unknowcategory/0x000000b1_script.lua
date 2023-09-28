-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!ShellMemoryArtifactsD\Unknowcategory\0x000000b1_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("HSTR:Trojan:Win32/MEM_KernelResolve_x64.D") and not (mp.get_mpattribute)("HSTR:Trojan:Win32/MEM_KernelResolve_x64.E") then
  return mp.CLEAN
end
return mp.INFECTED

