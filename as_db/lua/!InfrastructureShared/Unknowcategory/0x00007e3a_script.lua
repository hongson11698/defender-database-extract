-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e3a_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
local l_0_2, l_0_3 = nil, nil
for l_0_7,l_0_8 in ipairs(l_0_0) do
  if l_0_8.image_path ~= nil and (mp.bitand)(l_0_8.reason_ex, 1) == 1 then
    l_0_2 = (string.lower)(l_0_8.image_path)
    if l_0_2:find("excel.exe") or l_0_2:find("winword.exe") then
      l_0_3 = (string.lower)((mp.GetProcessCommandLine)(l_0_8.ppid))
      if (string.find)(l_0_3, "rs4_winatp-intro-invoice", 1, true) or (string.find)(l_0_3, "onboardingwindows11tomicrosoftdefender", 1, true) then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

