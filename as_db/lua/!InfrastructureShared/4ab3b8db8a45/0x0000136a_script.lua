-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4ab3b8db8a45\0x0000136a_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  (bm.trigger_sig)("DroppedKernelModule", (this_sigattrlog[1]).utf8p1)
end
return mp.CLEAN

