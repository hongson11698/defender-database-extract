-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000064b_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(bm.get_current_process_startup_info)
if l_0_0 and l_0_1 ~= nil and l_0_1.ppid ~= nil then
  local l_0_2, l_0_3, l_0_4 = pcall(bm.get_process_relationships, l_0_1.ppid)
  if l_0_2 then
    for l_0_8,l_0_9 in ipairs(l_0_3) do
      if l_0_9.image_path ~= nil and (string.find)((string.lower)(l_0_9.image_path), "msiexec.exe", 1, true) then
        for l_0_13,l_0_14 in ipairs(l_0_4) do
          if l_0_14 ~= nil and l_0_14.ppid ~= nil then
            (bm.request_SMS)(l_0_14.ppid, "m")
          end
        end
        return mp.INFECTED
      end
    end
  end
end
do
  l_0_2 = mp
  l_0_2 = l_0_2.CLEAN
  return l_0_2
end

