-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006622_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 4 then
  return mp.SUSPICIOUS
end
if (hstrlog[1]).matched and (hstrlog[2]).matched then
  (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.AMY")
end
return mp.LOWFI

