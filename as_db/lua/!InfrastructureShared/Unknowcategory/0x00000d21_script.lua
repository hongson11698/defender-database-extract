-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d21_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
local l_0_2 = 0
if l_0_0 ~= nil then
  for l_0_6,l_0_7 in ipairs(l_0_0) do
    if l_0_7.image_path ~= nil then
      local l_0_8 = (mp.ContextualExpandEnvironmentVariables)(l_0_7.image_path)
      if (sysio.IsFileExists)(l_0_8) then
        do
          do
            (bm.add_related_file)(l_0_8)
            l_0_2 = l_0_2 + 1
            if l_0_2 > 2 then
              break
            end
            -- DECOMPILER ERROR at PC31: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC31: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC31: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC31: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC31: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
end
return mp.INFECTED

