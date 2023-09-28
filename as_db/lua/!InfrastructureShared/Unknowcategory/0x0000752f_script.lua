-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000752f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil then
  (bm.request_SMS)(l_0_0.ppid, "M")
end
do
  if (this_sigattrlog[3]).matched == true then
    local l_0_1 = (this_sigattrlog[3]).ppid
    if l_0_1 ~= nil then
      (bm.request_SMS)(l_0_1, "M")
    end
  end
  do
    if (this_sigattrlog[4]).matched == true then
      local l_0_2 = (this_sigattrlog[4]).ppid
      if l_0_2 ~= nil then
        (bm.request_SMS)(l_0_2, "M")
      end
    end
    return mp.INFECTED
  end
end

