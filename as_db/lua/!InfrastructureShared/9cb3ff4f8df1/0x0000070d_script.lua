-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\9cb3ff4f8df1\0x0000070d_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["httpd.exe"] = true
l_0_0["tomcat.exe"] = true
l_0_0["nginx.exe"] = true
local l_0_1, l_0_2 = nil, nil
if (this_sigattrlog[1]).matched then
  l_0_1 = (string.lower)((this_sigattrlog[1]).utf8p1)
end
if (this_sigattrlog[2]).matched then
  l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p1)
end
if (this_sigattrlog[3]).matched then
  l_0_1 = (string.lower)((this_sigattrlog[3]).utf8p1)
end
if l_0_1 == nil then
  return mp.CLEAN
end
l_0_2 = l_0_1:match("(%w+%.exe)$")
local l_0_3 = GetRollingQueueKeyValue("app_version_" .. l_0_2, l_0_1)
if l_0_3 == nil then
  local l_0_4, l_0_5, l_0_6 = Get_file_version(l_0_1)
  if l_0_6 == nil or l_0_4 == nil then
    return mp.CLEAN
  end
  if not l_0_0[(string.lower)(l_0_6)] then
    return mp.CLEAN
  end
  local l_0_7 = "app_version_" .. l_0_2
  local l_0_8 = 31536000
  local l_0_9 = 50
  if l_0_4 ~= nil then
    local l_0_10 = Version_to_str(l_0_4)
    AppendToRollingQueue(l_0_7, l_0_1, l_0_10, l_0_8, l_0_9)
    ;
    (bm.add_related_string)("AppVersionFixed", l_0_10, bm.RelatedStringBMReport)
  else
    do
      do
        if l_0_5 ~= nil then
          AppendToRollingQueue(l_0_7, l_0_1, l_0_5, l_0_8, l_0_9)
          ;
          (bm.add_related_string)("AppVersionStr", l_0_5, bm.RelatedStringBMReport)
        end
        ;
        (bm.add_related_string)("AppVersion", l_0_3, bm.RelatedStringBMReport)
        do
          if GetRollingQueueKeyValue("app_version_timer" .. l_0_2, l_0_1) == nil then
            local l_0_11, l_0_15, l_0_16 = (MpCommon.GetCurrentTimeT)()
            l_0_15 = "app_version_timer"
            l_0_16 = l_0_2
            l_0_15 = l_0_15 .. l_0_16
            local l_0_12 = nil
            l_0_16 = 31536000
            local l_0_13 = nil
            l_0_12 = 50
            local l_0_14 = nil
            l_0_13 = AppendToRollingQueue
            l_0_14 = l_0_15
            l_0_13(l_0_14, l_0_1, l_0_11, l_0_16, l_0_12)
            l_0_13 = bm
            l_0_13 = l_0_13.add_related_string
            l_0_14 = "VerLastSent"
            l_0_13(l_0_14, l_0_11, bm.RelatedStringBMReport)
            l_0_13 = mp
            l_0_13 = l_0_13.INFECTED
            return l_0_13
          end
          local l_0_17 = nil
          local l_0_18 = nil
          if ((MpCommon.GetCurrentTimeT)() - l_0_17) / 60 <= 21600 then
            (bm.add_related_string)("IsRecent", "true", bm.RelatedStringBMReport)
            return mp.CLEAN
          end
          local l_0_23 = nil
          do
            local l_0_24 = nil
            AppendToRollingQueue("app_version_timer" .. l_0_2, l_0_1, l_0_18, 31536000, 50)
            do return mp.INFECTED end
            -- DECOMPILER ERROR: 2 unprocessed JMP targets
          end
        end
      end
    end
  end
end

