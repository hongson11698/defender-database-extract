-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008269_luac 

-- params : ...
-- function num : 0
if ((pe.mmap_va)(pevars.sigaddr + 3, 4) == "`\174\n\000" or (pe.mmap_va)(pevars.sigaddr + 3, 4) == "à\004\000" or (pe.mmap_va)(pevars.sigaddr + 3, 4) == "@B\015\000" or (pe.mmap_va)(pevars.sigaddr + 3, 4) == "\128\132\030\000" or (pe.mmap_va)(pevars.sigaddr + 3, 4) == "@KL\000") and ((pe.mmap_va)(pevars.sigaddr + 10, 1) == "]" or (pe.mmap_va)(pevars.sigaddr + 10, 1) == "}") then
  (pe.mmap_patch_va)(pevars.sigaddr + 7, "")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 12, "\235")
  ;
  (mp.set_mpattribute)("FOPEX:Deep_Analysis_Disable_APILimit")
  local l_0_0 = 256
  local l_0_1 = (pe.mmap_va)(pevars.sigaddr, l_0_0)
  local l_0_2 = (string.find)(l_0_1, "h@B\015%z")
  local l_0_3 = (string.find)(l_0_1, "`\174\n%z")
  local l_0_4 = (string.find)(l_0_1, "j%z")
  local l_0_5 = (string.find)(l_0_1, "j\002", 1, true)
  local l_0_6 = (string.find)(l_0_1, "\255%z%z%zj")
  local l_0_7 = (string.find)(l_0_1, "\255%z%z%zh")
  local l_0_8 = (string.find)(l_0_1, "j\001", 1, true)
  local l_0_9 = (string.find)(l_0_1, "h\001%z\031%z")
  local l_0_10 = (string.find)(l_0_1, "h\132\003%z%z")
  if l_0_2 and l_0_3 then
    for l_0_14 = 1, 256 - l_0_2 do
      if (pe.mmap_va)(pevars.sigaddr + l_0_14 + l_0_3, 3) == "P\255\021" then
        (pe.mmap_patch_va)(pevars.sigaddr + l_0_14 + l_0_3 + 1, "YYY\144")
      end
    end
    if l_0_4 and l_0_5 then
      for l_0_18 = 1, 48 do
        if (pe.mmap_va)(pevars.sigaddr + l_0_18 + l_0_5, 3) == "\000\255\021" then
          (pe.mmap_patch_va)(pevars.sigaddr + l_0_18 + l_0_5 + 1, "YYY\144")
        end
      end
    end
    do
      if (l_0_6 or l_0_7) and l_0_8 then
        for l_0_22 = 1, 48 do
          if (pe.mmap_va)(pevars.sigaddr + l_0_22 + l_0_8, 3) == "\000\255\021" then
            (pe.mmap_patch_va)(pevars.sigaddr + l_0_22 + l_0_8 + 1, "YYY\144")
          end
        end
      end
      do
        if l_0_9 then
          for l_0_26 = 1, 48 do
            if (pe.mmap_va)(pevars.sigaddr + l_0_26 + l_0_9, 3) == "\000\255\021" then
              (pe.mmap_patch_va)(pevars.sigaddr + l_0_26 + l_0_9 + 1, "YYY\144")
            end
          end
        end
        do
          if l_0_10 then
            for l_0_30 = 1, 96 do
              if (pe.mmap_va)(pevars.sigaddr + l_0_30 + l_0_10, 1) == "\232" then
                (pe.mmap_patch_va)(pevars.sigaddr + l_0_30 + l_0_10, "\144")
              end
              if (pe.mmap_va)(pevars.sigaddr + l_0_30 + l_0_10, 3) == "\000\255\021" then
                (pe.mmap_patch_va)(pevars.sigaddr + l_0_30 + l_0_10 + 1, "")
              end
            end
          end
          do
            do
              do return mp.INFECTED end
              return mp.CLEAN
            end
          end
        end
      end
    end
  end
end

