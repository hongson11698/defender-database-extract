-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f43_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = ((string.sub)(l_0_1, -15)):match("\\([^\\]+)$")
  local l_0_3 = {}
  l_0_3["svchost.exe"] = true
  l_0_3["taskeng.exe"] = true
  l_0_3["taskhostw.exe"] = true
  if l_0_3[l_0_2] then
    local l_0_4 = nil
    if (this_sigattrlog[1]).matched then
      l_0_4 = (this_sigattrlog[1]).utf8p2
    end
    if (this_sigattrlog[2]).matched then
      l_0_4 = (this_sigattrlog[2]).utf8p2
    end
    if l_0_4 ~= nil then
      local l_0_5 = (mp.GetExecutablesFromCommandLine)(l_0_4)
      for l_0_9,l_0_10 in ipairs(l_0_5) do
        if l_0_10 ~= nil and l_0_10:len() > 3 and (sysio.IsFileExists)(l_0_10) then
          (bm.add_related_file)(l_0_10)
        end
      end
    end
    do
      do
        l_0_5 = mp
        l_0_5 = l_0_5.INFECTED
        do return l_0_5 end
        l_0_1 = mp
        l_0_1 = l_0_1.CLEAN
        return l_0_1
      end
    end
  end
end

