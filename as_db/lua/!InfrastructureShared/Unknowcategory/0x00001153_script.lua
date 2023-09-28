-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001153_luac 

-- params : ...
-- function num : 0
if (mp.GetResmgrBasePlugin)() ~= "Taskscheduler" then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)()
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.find)(l_0_0, "%-%>%(UTF%-16LE%)$") == nil then
  return mp.CLEAN
end
local l_0_1 = tostring(headerpage)
local l_0_2 = (string.match)(l_0_1, "<Exec>.*<Command>(.*)</Command>.*</Exec>")
local l_0_3 = (string.match)(l_0_1, "<Exec>.*<Arguments>(.*)</Arguments>.*</Exec>")
if l_0_2 == nil then
  local l_0_4 = (mp.getfilesize)()
  if l_0_4 > 4096 and l_0_4 < 20480 then
    (mp.readprotection)(false)
    local l_0_5 = (mp.readfile)(0, l_0_4)
    l_0_2 = (string.match)(l_0_5, "<Exec>.*<Command>(.*)</Command>.*</Exec>")
    l_0_3 = (string.match)(l_0_5, "<Exec>.*<Arguments>(.*)</Arguments>.*</Exec>")
  else
    do
      do
        do return mp.CLEAN end
        if l_0_2 == nil then
          return mp.CLEAN
        end
        if l_0_3 ~= nil then
          l_0_2 = l_0_2 .. " " .. l_0_3
        end
        local l_0_6 = (string.lower)(l_0_2)
        local l_0_7, l_0_8 = (string.match)(l_0_6, "(.*powershell[%.exe]-)%s+%-encodedcommand%s+()")
        if l_0_7 == nil then
          l_0_7 = (string.match)(l_0_6, "(.*powershell[%.exe]-)%s+.-%-en?c?%s+()")
        end
        if l_0_7 ~= nil and l_0_8 ~= nil then
          local l_0_9 = (MpCommon.Base64Decode)((string.sub)(l_0_2, l_0_8))
          if l_0_9 ~= nil then
            l_0_9 = (string.gsub)(l_0_9, "%z", "")
            ;
            (mp.vfo_add_buffer)(l_0_7 .. " " .. l_0_9, "[TaskSchedCommand]", 0)
          else
            ;
            (mp.vfo_add_buffer)(l_0_2, "[TaskSchedCommand]", 0)
          end
        else
          do
            ;
            (mp.vfo_add_buffer)(l_0_2, "[TaskSchedCommand]", 0)
            return mp.CLEAN
          end
        end
      end
    end
  end
end

