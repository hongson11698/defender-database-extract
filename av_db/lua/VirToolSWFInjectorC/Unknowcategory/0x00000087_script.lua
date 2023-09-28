-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\VirToolSWFInjectorC\Unknowcategory\0x00000087_luac 

-- params : ...
-- function num : 0
if ((((((((((((((mp.get_mpattribute)("SCRIPT:FlashExp_check_spray_exp") and not (mp.get_mpattribute)("SCRIPT:FlashExp_decrypt_data")) or (mp.get_mpattribute)("SCRIPT:FlashExp_find_virtprot")) and not (mp.get_mpattribute)("SCRIPT:FlashExp_is_vuln")) or (mp.get_mpattribute)("SCRIPT:FlashExp_prepare_shell")) and not (mp.get_mpattribute)("SCRIPT:FlashExp_read_data")) or (mp.get_mpattribute)("SCRIPT:FlashExp_read_keys")) and not (mp.get_mpattribute)("SCRIPT:FlashExp_run_payload")) or (mp.get_mpattribute)("SCRIPT:FlashExp_run_shell")) and not (mp.get_mpattribute)("SCRIPT:FlashExp_sleep_end")) or (mp.get_mpattribute)("SCRIPT:FlashExp_spray_obj")) and not (mp.get_mpattribute)("SCRIPT:FlashExp_test_spray")) or (mp.get_mpattribute)("SCRIPT:FlashExp_wait_and_run")) and not (mp.get_mpattribute)("SCRIPT:FlashExp_shellcode")) or 0 + 2 + 1 + 1 + 1 + 2 + 1 + 1 + 2 + 2 + 1 + 2 + 1 + 1 + 3 >= 10 then
  return mp.INFECTED
end
return mp.CLEAN

