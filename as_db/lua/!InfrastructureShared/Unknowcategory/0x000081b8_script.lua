-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000081b8_luac 

-- params : ...
-- function num : 0
if ((pe.mmap_va)(pevars.sigaddr + 1, 1) == "\254" or (pe.mmap_va)(pevars.sigaddr + 1, 1) == "\255") and ((pe.mmap_va)(pevars.sigaddr + 14, 1) == "\000" or (pe.mmap_va)(pevars.sigaddr + 14, 1) == "\001" or (pe.mmap_va)(pevars.sigaddr + 14, 1) == "\016") then
  (pe.mmap_patch_va)(pevars.sigaddr + 6, "")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 15, "\235")
  ;
  (mp.set_mpattribute)("FOPEX:Deep_Analysis_Disable_APILimit")
  local l_0_0 = 256
  local l_0_1 = (pe.mmap_va)(pevars.sigaddr, l_0_0)
  local l_0_2 = (string.find)(l_0_1, "h@B\015%z")
  local l_0_3 = (string.find)(l_0_1, "`\174\n%z")
  local l_0_4 = (string.find)(l_0_1, "h\001%z\031%z")
  local l_0_5 = (string.find)(l_0_1, "h\132\003%z%z")
  if l_0_2 and l_0_3 then
    for l_0_9 = 1, 256 - l_0_2 do
      if (pe.mmap_va)(pevars.sigaddr + l_0_9 + l_0_3, 3) == "P\255\021" then
        (pe.mmap_patch_va)(pevars.sigaddr + l_0_9 + l_0_3 + 1, "YYY\144")
      end
    end
    if l_0_4 then
      for l_0_13 = 1, 48 do
        if (pe.mmap_va)(pevars.sigaddr + l_0_13 + l_0_4, 4) == "\031\000\255\021" then
          (pe.mmap_patch_va)(pevars.sigaddr + l_0_13 + l_0_4 + 2, "YYY\144")
        end
      end
    end
    do
      if l_0_5 then
        for l_0_17 = 1, 160 do
          if (pe.mmap_va)(pevars.sigaddr + l_0_17 + l_0_5, 3) == "\000\255\021" then
            (pe.mmap_patch_va)(pevars.sigaddr + l_0_17 + l_0_5 + 1, "")
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

