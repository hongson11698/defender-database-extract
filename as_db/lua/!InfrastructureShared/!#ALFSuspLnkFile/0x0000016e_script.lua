-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFSuspLnkFile\0x0000016e_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("Lua:LNK_Settings!RunMinimized") and ((mp.get_mpattribute)("Lua:LastFolderCount!0") or (mp.get_mpattribute)("Lua:LessThanTenFilesFoldersInZip")) then
  local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_0 == nil then
    return mp.CLEAN
  end
  local l_0_1, l_0_2 = pcall(mp.GetLnkInfo)
  if l_0_1 == false or l_0_2 == nil then
    return mp.CLEAN
  end
  do
    local l_0_3, l_0_8, l_0_12, l_0_13, l_0_16, l_0_18, l_0_24 = l_0_2.Arguments or ""
    do
      local l_0_4, l_0_9, l_0_14, l_0_17, l_0_19, l_0_25 = , l_0_2.BasePath or ""
      do
        local l_0_5, l_0_10, l_0_15, l_0_20, l_0_26 = , l_0_2.RelativePath or ""
        do
          local l_0_6, l_0_11, l_0_21, l_0_27 = , l_0_2.IconLocation or ""
          do
            local l_0_7, l_0_22, l_0_28 = nil
            -- DECOMPILER ERROR at PC64: Confused about usage of register: R3 in 'UnsetPending'

            -- DECOMPILER ERROR at PC66: Confused about usage of register: R5 in 'UnsetPending'

            -- DECOMPILER ERROR at PC70: Confused about usage of register: R6 in 'UnsetPending'

            do
              if not (MpCommon.GetMountedFileBackingFilePath)(l_0_0) then
                local l_0_23, l_0_29 = nil
              end
              -- DECOMPILER ERROR at PC83: Confused about usage of register: R7 in 'UnsetPending'

              -- DECOMPILER ERROR at PC84: Confused about usage of register: R6 in 'UnsetPending'

              -- DECOMPILER ERROR at PC85: Confused about usage of register: R3 in 'UnsetPending'

              -- DECOMPILER ERROR at PC86: Confused about usage of register: R5 in 'UnsetPending'

              -- DECOMPILER ERROR at PC87: Confused about usage of register: R4 in 'UnsetPending'

              do
                local l_0_30 = nil
                ;
                (mp.set_mpattribute)((string.format)("MpInternal_researchdata=LnkData=%s", (string.format)("path=%s;iconIndex=%s;iconLocation=%s;args=%s;relativePath=%s;absolutePath=%s;backing=%s", l_0_0, l_0_2.IconIndex or "", l_0_27, l_0_23, l_0_28, l_0_29, (l_0_7 == "" and l_0_28 == "") or (l_0_2.IconIndex or "" == "" and l_0_27 == "") or "")))
                do return mp.INFECTED end
                return mp.CLEAN
              end
            end
          end
        end
      end
    end
  end
end

