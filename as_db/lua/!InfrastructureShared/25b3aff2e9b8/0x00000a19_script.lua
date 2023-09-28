-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\25b3aff2e9b8\0x00000a19_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_1) do
  if l_0_6.image_path ~= nil and l_0_6.ppid ~= nil then
    local l_0_7 = "browser_childproc"
    if l_0_6.reason == bm.RELATIONSHIP_CREATED then
      l_0_7 = "browser_childproc_created"
    else
      if l_0_6.reason == bm.RELATIONSHIP_INJECTION then
        l_0_7 = "browser_childproc_injected"
      else
        if l_0_6.reason == bm.RELATIONSHIP_INHERITED then
          l_0_7 = "browser_childproc_inherited"
        end
      end
    end
    ;
    (bm.trigger_sig_target_propagate)("BM:BrowserChildProc.A", l_0_7, l_0_6.ppid)
  end
end
return mp.CLEAN

