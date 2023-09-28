-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\207b369d195c0\0x00001388_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_1) do
  if l_0_6.ppid ~= nil then
    (bm.trigger_sig_target_propagate)("ttexclusion", "ttexclusion-parentex", l_0_6.ppid)
  end
end
return mp.CLEAN

