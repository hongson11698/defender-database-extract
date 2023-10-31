#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <filesystem>
#include <stdint.h>
#include <ctype.h>

typedef struct
{
    uint8_t sig_type;
    uint8_t size_low;
    uint16_t size_high;
    uint8_t value[1];
} sig_entry;

typedef struct
{
    char reversed_0[0xa];
    uint16_t nameSize;
    char name[1];
} THREAT_BEGIN;


#pragma pack(push, 1)
typedef struct string_data
{
    uint16_t reversed0;
    unsigned char string_size;
    unsigned char str[1];
} string_data;

typedef struct PE_HSTR_ALL
{
    uint16_t count_1;
    uint16_t count_2;
    uint16_t count_3;
    char reversed_0;
    string_data s_data[1];
} PE_HSTR_ALL, *PPE_HSTR_ALL;

typedef struct LUA_STANDALONE
{
    uint16_t Type;
    uint16_t DescSize;
    uint32_t LUASize;
    unsigned char data[1];
} LUA_STANDALONE, *PLUA_STANDALONE;

typedef struct delta_blob
{
    unsigned int mergeSize;
    unsigned int mergeCrc;
    unsigned char data_blob[1];
} delta_blob, *pdelta_blob;

#pragma pack(pop)

#if defined(WIN32)
#define DIR_SEPARATOR '\\'
#else
#define DIR_SEPARATOR '/'
#endif


// global variable
char *out_folder = NULL;
unsigned char *lua_buffer = NULL;
size_t lua_buffer_index = 0;
unsigned char *friendly_buffer = NULL;
size_t friendly_buffer_index = 0;

char *ByteToHex(unsigned char *bytes, size_t size)
{
    char *out = (char *)malloc(size * 2 + 1);
    const char hexChar[] = "0123456789ABCDEF";
    if (out != NULL)
    {
        memset(out, 0, size * 2 + 1);
        for (size_t i = 0; i < size; i++)
        {
            (out)[i * 2 + 0] = hexChar[(bytes[i] >> 4) & 0x0F];
            (out)[i * 2 + 1] = hexChar[(bytes[i]) & 0x0F];
        }
    }
    return out;
}

size_t get_sig_size(sig_entry *entry)
{
    return entry->size_low | entry->size_high << 8;
}

const char *get_sig_type(uint8_t a1)
{
    if (a1 <= 0x9Du)
    {
        if (a1 == 157)
            return "SIGNATURE_TYPE_THREAD_X86";
        if (a1 > 0x6Au)
        {
            if (a1 > 0x86u)
            {
                if (a1 > 0x90u)
                {
                    switch (a1)
                    {
                    case 0x91u:
                        return "SIGNATURE_TYPE_VDLL_IA64";
                    case 0x95u:
                        return "SIGNATURE_TYPE_PEBMPAT";
                    case 0x96u:
                        return "SIGNATURE_TYPE_AAGGREGATOR";
                    case 0x97u:
                        return "SIGNATURE_TYPE_SAMPLE_REQUEST_BY_NAME";
                    case 0x98u:
                        return "SIGNATURE_TYPE_REMOVAL_POLICY_BY_NAME";
                    case 0x99u:
                        return "SIGNATURE_TYPE_TUNNEL_X86";
                    case 0x9Au:
                        return "SIGNATURE_TYPE_TUNNEL_X64";
                    case 0x9Bu:
                        return "SIGNATURE_TYPE_TUNNEL_IA64";
                    case 0x9Cu:
                        return "SIGNATURE_TYPE_VDLL_ARM";
                    }
                }
                else
                {
                    switch (a1)
                    {
                    case 0x90u:
                        return "SIGNATURE_TYPE_TARGET_SCRIPT_PCODE";
                    case 0x87u:
                        return "SIGNATURE_TYPE_PESTATIC";
                    case 0x88u:
                        return "SIGNATURE_TYPE_UFSP_DISABLE";
                    case 0x89u:
                        return "SIGNATURE_TYPE_FOPEX";
                    case 0x8Au:
                        return "SIGNATURE_TYPE_PEPCODE";
                    case 0x8Bu:
                        return "SIGNATURE_TYPE_IL_PATTERN";
                    case 0x8Cu:
                        return "SIGNATURE_TYPE_ELFHSTR_EXT";
                    case 0x8Du:
                        return "SIGNATURE_TYPE_MACHOHSTR_EXT";
                    case 0x8Eu:
                        return "SIGNATURE_TYPE_DOSHSTR_EXT";
                    case 0x8Fu:
                        return "SIGNATURE_TYPE_MACROHSTR_EXT";
                    }
                }
            }
            else
            {
                if (a1 == 134)
                    return "SIGNATURE_TYPE_PEMAIN_LOCATOR";
                if (a1 > 0x79u)
                {
                    switch (a1)
                    {
                    case 0x7Au:
                        return "SIGNATURE_TYPE_VERSIONCHECK";
                    case 0x7Bu:
                        return "SIGNATURE_TYPE_SAMPLE_REQUEST";
                    case 0x7Cu:
                        return "SIGNATURE_TYPE_VDLL_X64";
                    case 0x7Eu:
                        return "SIGNATURE_TYPE_SNID";
                    case 0x7Fu:
                        return "SIGNATURE_TYPE_FOP";
                    case 0x80u:
                        return "SIGNATURE_TYPE_KCRCE";
                    case 0x83u:
                        return "SIGNATURE_TYPE_VFILE";
                    case 0x84u:
                        return "SIGNATURE_TYPE_SIGFLAGS";
                    case 0x85u:
                        return "SIGNATURE_TYPE_PEHSTR_EXT2";
                    }
                }
                else
                {
                    switch (a1)
                    {
                    case 'y':
                        return "SIGNATURE_TYPE_VDLL_X86";
                    case 'k':
                        return "SIGNATURE_TYPE_WVT_EXCEPTION";
                    case 'l':
                        return "SIGNATURE_TYPE_REVOKED_CERTIFICATE";
                    case 'p':
                        return "SIGNATURE_TYPE_TRUSTED_PUBLISHER";
                    case 'q':
                        return "SIGNATURE_TYPE_ASEP_FILEPATH";
                    case 's':
                        return "SIGNATURE_TYPE_DELTA_BLOB";
                    case 't':
                        return "SIGNATURE_TYPE_DELTA_BLOB_RECINFO";
                    case 'u':
                        return "SIGNATURE_TYPE_ASEP_FOLDERNAME";
                    case 'w':
                        return "SIGNATURE_TYPE_PATTMATCH_V2";
                    case 'x':
                        return "SIGNATURE_TYPE_PEHSTR_EXT";
                    }
                }
            }
        }
        else
        {
            if (a1 == 106)
                return "SIGNATURE_TYPE_REMOVAL_POLICY";
            if (a1 > 0x4Au)
            {
                if (a1 > 0x5Du)
                {
                    switch (a1)
                    {
                    case '^':
                        return "SIGNATURE_TYPE_FILENAME";
                    case '_':
                        return "SIGNATURE_TYPE_FILEPATH";
                    case '`':
                        return "SIGNATURE_TYPE_FOLDERNAME";
                    case 'a':
                        return "SIGNATURE_TYPE_PEHSTR";
                    case 'b':
                        return "SIGNATURE_TYPE_LOCALHASH";
                    case 'c':
                        return "SIGNATURE_TYPE_REGKEY";
                    case 'd':
                        return "SIGNATURE_TYPE_HOSTSENTRY";
                    case 'g':
                        return "SIGNATURE_TYPE_STATIC";
                    case 'i':
                        return "SIGNATURE_TYPE_LATENT_THREAT";
                    }
                }
                else
                {
                    switch (a1)
                    {
                    case ']':
                        return "SIGNATURE_TYPE_THREAT_END";
                    case 'P':
                        return "SIGNATURE_TYPE_CKSIMPLEREC";
                    case 'Q':
                        return "SIGNATURE_TYPE_PATTMATCH";
                    case 'S':
                        return "SIGNATURE_TYPE_RPFROUTINE";
                    case 'U':
                        return "SIGNATURE_TYPE_NID";
                    case 'V':
                        return "SIGNATURE_TYPE_GENSFX";
                    case 'W':
                        return "SIGNATURE_TYPE_UNPLIB";
                    case 'X':
                        return "SIGNATURE_TYPE_DEFAULTS";
                    case '[':
                        return "SIGNATURE_TYPE_DBVAR";
                    case '\\':
                        return "SIGNATURE_TYPE_THREAT_BEGIN";
                    }
                }
            }
            else
            {
                if (a1 == 74)
                    return "SIGNATURE_TYPE_TARGET_SCRIPT";
                if (a1 > 0x2Cu)
                {
                    switch (a1)
                    {
                    case '0':
                        return "SIGNATURE_TYPE_TITANFLT";
                    case '=':
                        return "SIGNATURE_TYPE_PEFILE_CURE";
                    case '>':
                        return "SIGNATURE_TYPE_MAC_CURE";
                    case '@':
                        return "SIGNATURE_TYPE_SIGTREE";
                    case 'A':
                        return "SIGNATURE_TYPE_SIGTREE_EXT";
                    case 'B':
                        return "SIGNATURE_TYPE_MACRO_PCODE";
                    case 'C':
                        return "SIGNATURE_TYPE_MACRO_SOURCE";
                    case 'D':
                        return "SIGNATURE_TYPE_BOOT";
                    case 'I':
                        return "SIGNATURE_TYPE_CLEANSCRIPT";
                    }
                }
                else
                {
                    switch (a1)
                    {
                    case 0x2Cu:
                        return "SIGNATURE_TYPE_NSCRIPT_CURE";
                    case 1u:
                        return "SIGNATURE_TYPE_RESERVED";
                    case 2u:
                        return "SIGNATURE_TYPE_VOLATILE_THREAT_INFO";
                    case 3u:
                        return "SIGNATURE_TYPE_VOLATILE_THREAT_ID";
                    case 0x11u:
                        return "SIGNATURE_TYPE_CKOLDREC";
                    case 0x20u:
                        return "SIGNATURE_TYPE_KVIR32";
                    case 0x21u:
                        return "SIGNATURE_TYPE_POLYVIR32";
                    case 0x27u:
                        return "SIGNATURE_TYPE_NSCRIPT_NORMAL";
                    case 0x28u:
                        return "SIGNATURE_TYPE_NSCRIPT_SP";
                    case 0x29u:
                        return "SIGNATURE_TYPE_NSCRIPT_BRUTE";
                    }
                }
            }
        }
        return "SIGNATURE_TYPE_UNKNOWN";
    }
    if (a1 <= 0xC6u)
    {
        if (a1 == 198)
            return "SIGNATURE_TYPE_MSILFOPEX";
        if (a1 > 0xB1u)
        {
            if (a1 > 0xBCu)
            {
                switch (a1)
                {
                case 0xBDu:
                    return "SIGNATURE_TYPE_LUASTANDALONE";
                case 0xBEu:
                    return "SIGNATURE_TYPE_DEXHSTR_EXT";
                case 0xBFu:
                    return "SIGNATURE_TYPE_JAVAHSTR_EXT";
                case 0xC0u:
                    return "SIGNATURE_TYPE_MAGICCODE";
                case 0xC1u:
                    return "SIGNATURE_TYPE_CLEANSTORE_RULE";
                case 0xC2u:
                    return "SIGNATURE_TYPE_VDLL_CHECKSUM";
                case 0xC3u:
                    return "SIGNATURE_TYPE_THREAT_UPDATE_STATUS";
                case 0xC4u:
                    return "SIGNATURE_TYPE_VDLL_MSIL";
                case 0xC5u:
                    return "SIGNATURE_TYPE_ARHSTR_EXT";
                }
            }
            else
            {
                switch (a1)
                {
                case 0xBCu:
                    return "SIGNATURE_TYPE_KPATEX";
                case 0xB2u:
                    return "SIGNATURE_TYPE_VFILEEX";
                case 0xB3u:
                    return "SIGNATURE_TYPE_SIGTREE_BM";
                case 0xB4u:
                    return "SIGNATURE_TYPE_VBFOP";
                case 0xB5u:
                    return "SIGNATURE_TYPE_VDLL_META";
                case 0xB6u:
                    return "SIGNATURE_TYPE_TUNNEL_ARM";
                case 0xB7u:
                    return "SIGNATURE_TYPE_THREAD_ARM";
                case 0xB8u:
                    return "SIGNATURE_TYPE_PCODEVALIDATOR";
                case 0xBAu:
                    return "SIGNATURE_TYPE_MSILFOP";
                case 0xBBu:
                    return "SIGNATURE_TYPE_KPAT";
                }
            }
        }
        else
        {
            if (a1 == 177)
                return "SIGNATURE_TYPE_NISBLOB";
            if (a1 > 0xA7u)
            {
                switch (a1)
                {
                case 0xA8u:
                    return "SIGNATURE_TYPE_BM_INFO";
                case 0xA9u:
                    return "SIGNATURE_TYPE_NDAT";
                case 0xAAu:
                    return "SIGNATURE_TYPE_FASTPATH_DATA";
                case 0xABu:
                    return "SIGNATURE_TYPE_FASTPATH_SDN";
                case 0xACu:
                    return "SIGNATURE_TYPE_DATABASE_CERT";
                case 0xADu:
                    return "SIGNATURE_TYPE_SOURCE_INFO";
                case 0xAEu:
                    return "SIGNATURE_TYPE_HIDDEN_FILE";
                case 0xAFu:
                    return "SIGNATURE_TYPE_COMMON_CODE";
                case 0xB0u:
                    return "SIGNATURE_TYPE_VREG";
                }
            }
            else
            {
                switch (a1)
                {
                case 0xA7u:
                    return "SIGNATURE_TYPE_BM_STATIC";
                case 0x9Eu:
                    return "SIGNATURE_TYPE_THREAD_X64";
                case 0x9Fu:
                    return "SIGNATURE_TYPE_THREAD_IA64";
                case 0xA0u:
                    return "SIGNATURE_TYPE_FRIENDLYFILE_SHA256";
                case 0xA1u:
                    return "SIGNATURE_TYPE_FRIENDLYFILE_SHA512";
                case 0xA2u:
                    return "SIGNATURE_TYPE_SHARED_THREAT";
                case 0xA3u:
                    return "SIGNATURE_TYPE_VDM_METADATA";
                case 0xA4u:
                    return "SIGNATURE_TYPE_VSTORE";
                case 0xA5u:
                    return "SIGNATURE_TYPE_VDLL_SYMINFO";
                case 0xA6u:
                    return "SIGNATURE_TYPE_IL2_PATTERN";
                }
            }
        }
        return "SIGNATURE_TYPE_UNKNOWN";
    }
    if (a1 <= 0xDAu)
    {
        if (a1 == 218)
            return "SIGNATURE_TYPE_FASTPATH_SDN_EX";
        if (a1 > 0xD0u)
        {
            switch (a1)
            {
            case 0xD1u:
                return "SIGNATURE_TYPE_SWFHSTR_EXT";
            case 0xD2u:
                return "SIGNATURE_TYPE_REWSIGS";
            case 0xD3u:
                return "SIGNATURE_TYPE_AUTOITHSTR_EXT";
            case 0xD4u:
                return "SIGNATURE_TYPE_INNOHSTR_EXT";
            case 0xD5u:
                return "SIGNATURE_TYPE_CERT_STORE_ENTRY";
            case 0xD6u:
                return "SIGNATURE_TYPE_EXPLICITRESOURCE";
            case 0xD7u:
                return "SIGNATURE_TYPE_CMDHSTR_EXT";
            case 0xD8u:
                return "SIGNATURE_TYPE_FASTPATH_TDN";
            case 0xD9u:
                return "SIGNATURE_TYPE_EXPLICITRESOURCEHASH";
            }
        }
        else
        {
            switch (a1)
            {
            case 0xD0u:
                return "SIGNATURE_TYPE_BRUTE";
            case 0xC7u:
                return "SIGNATURE_TYPE_VBFOPEX";
            case 0xC8u:
                return "SIGNATURE_TYPE_FOP64";
            case 0xC9u:
                return "SIGNATURE_TYPE_FOPEX64";
            case 0xCAu:
                return "SIGNATURE_TYPE_JSINIT";
            case 0xCBu:
                return "SIGNATURE_TYPE_PESTATICEX";
            case 0xCCu:
                return "SIGNATURE_TYPE_KCRCEX";
            case 0xCDu:
                return "SIGNATURE_TYPE_FTRIE_POS";
            case 0xCEu:
                return "SIGNATURE_TYPE_NID64";
            case 0xCFu:
                return "SIGNATURE_TYPE_MACRO_PCODE64";
            }
        }
        return "SIGNATURE_TYPE_UNKNOWN";
    }
    if (a1 <= 0xE5u)
    {
        switch (a1)
        {
        case 0xE5u:
            return "SIGNATURE_TYPE_SNIDEX";
        case 0xDBu:
            return "SIGNATURE_TYPE_BLOOM_FILTER";
        case 0xDCu:
            return "SIGNATURE_TYPE_RESEARCH_TAG";
        case 0xDEu:
            return "SIGNATURE_TYPE_ENVELOPE";
        case 0xDFu:
            return "SIGNATURE_TYPE_REMOVAL_POLICY64";
        case 0xE0u:
            return "SIGNATURE_TYPE_REMOVAL_POLICY64_BY_NAME";
        case 0xE1u:
            return "SIGNATURE_TYPE_VDLL_META_X64";
        case 0xE2u:
            return "SIGNATURE_TYPE_VDLL_META_ARM";
        case 0xE3u:
            return "SIGNATURE_TYPE_VDLL_META_MSIL";
        case 0xE4u:
            return "SIGNATURE_TYPE_MDBHSTR_EXT";
        }
        return "SIGNATURE_TYPE_UNKNOWN";
    }
    switch (a1)
    {
    case 0xE6u:
        return "SIGNATURE_TYPE_SNIDEX2";
    case 0xE7u:
        return "SIGNATURE_TYPE_AAGGREGATOREX";
    case 0xE8u:
        return "SIGNATURE_TYPE_PUA_APPMAP";
    case 0xE9u:
        return "SIGNATURE_TYPE_PROPERTY_BAG";
    case 0xEAu:
        return "SIGNATURE_TYPE_DMGHSTR_EXT";
    case 0xEBu:
        return "SIGNATURE_TYPE_DATABASE_CATALOG";
    }
    if (a1 != 236)
    {
        if (a1 == 237)
            return "SIGNATURE_TYPE_BM_ENV_VAR_MAP";
        return "SIGNATURE_TYPE_UNKNOWN";
    }
    return "SIGNATURE_TYPE_DATABASE_CERT2";
}

size_t get_file_size(FILE *h_file)
{
    size_t size = 0;
    fseek(h_file, 0L, SEEK_END);
    size = ftell(h_file);
    rewind(h_file);
    return size;
}

void fix_file_name(char *fileName)
{
    int len = strlen(fileName);
    for (int i = 0; i < len; i++)
    {
        if (!isprint(fileName[i]))
        {
            fileName[i] = '_';
        }
    }
    return;
}

void simple_str(char *str, size_t size)
{
    for (size_t i = 0; i < size; i++)
    {
        if (!isprint(str[i]))
        {
            str[i] = '_';
        }
    }
}

void print_pehstr_sig(char *pehstrdata, size_t size)
{   
    int strSize = 0;
    size_t ptrSize = 0;
    PPE_HSTR_ALL pehstr = (PPE_HSTR_ALL)(pehstrdata + ptrSize);
    printf("\nCount1: %x, count2: %x, count3: %x", pehstr->count_1, pehstr->count_2, pehstr->count_3);

    do
    {
        strSize = 0;
        string_data *sdata = (string_data *)((char *)(&pehstr->s_data) + ptrSize);
        if (sdata->reversed0 == 0)
        {
            break;
        }
        printf("\n\t%02x--%02x: ", sdata->reversed0, sdata->string_size);
        strSize = sdata->string_size;
        char *str = (char *)malloc(strSize + 1);
        memset(str, 0, strSize + 1);
        memcpy(str, sdata->str, strSize);
        simple_str(str, strSize);
        printf("%s", str);
        free(str);
        ptrSize += sizeof(string_data) + strSize - 1;
    } while (1);
}

void print_lua_signature(char *threatName, char *lua_data, size_t size)
{
    size_t nWrite = 0;
    size_t ptrSize = 0;
    char *catag = NULL;
    char temp[0x1000] = {0};

    PLUA_STANDALONE plua_standard = (PLUA_STANDALONE)(lua_data + ptrSize);

    if (plua_standard->DescSize == 0)
    {
        catag = (char*)"Unknowcategory";
        ptrSize = 0;
    }
    else
    {
        memset(temp, 0, 0x1000);

        strncpy(temp, (const char *)plua_standard->data, plua_standard->DescSize);
        catag = temp;
        ptrSize = plua_standard->DescSize;
    }

    do
    {
        if (memcmp(plua_standard->data + ptrSize, "\x1b\x4c\x75\x61\x51", 5) == 0)
        {
            break;
        }
        ptrSize += 1;
    } while (1);

    // printf("\n%s :LUA: %02x - %s", threatName, plua_standard->Type, catag);

    char *data = ByteToHex(plua_standard->data + ptrSize, plua_standard->LUASize);
    if (data != NULL)
    {
        //		threat,lua_attr,category,hexdata
        nWrite = sprintf((char *)lua_buffer + lua_buffer_index, "\"%s\",\"0x%04x\",\"%s\",\"%d\",\"%s\"\r\n", threatName, plua_standard->Type, catag, plua_standard->LUASize, 
        data);
        lua_buffer_index += nWrite;
        free(data);
    }
}

size_t print_sig(unsigned char *out_buffer, char *threatName, sig_entry *entry)
{
    size_t nWrite = 0;
    const char *sigtype = get_sig_type(entry->sig_type);
    size_t sigSize = get_sig_size(entry);
    if (entry->sig_type == 0xA1 || entry->sig_type == 0xA0)
    {
        char *data_hash = ByteToHex(entry->value, sigSize);
        nWrite = sprintf((char *)friendly_buffer + friendly_buffer_index, "\"%s\",\"%s\"\r\n", sigtype, data_hash);
        friendly_buffer_index += nWrite;
        free(data_hash);
    }
    if (entry->sig_type == 0x61)
    {
        // print_pehstr_sig((char *)entry->value, sigSize);
    }
    if (entry->sig_type == 0xBD)
    {
        print_lua_signature(threatName, (char *)entry->value, sigSize);
    }
    char *data = ByteToHex(entry->value, sigSize);
    if (data != NULL)
    {
        nWrite = sprintf((char *)out_buffer, "\"%s\",\"%s\",\"%s\"\r\n", threatName, sigtype, data);
        free(data);
    }
    return nWrite;
}

char GetMSB(short num)
{
    short msb;
    msb = 1 << (sizeof(num) * 8 - 1);
    if (num & msb)
    {
        return 1;
    }
    return 0;
}

unsigned char *get_delta_blob_sig(unsigned char *dt_data)
{
    sig_entry *entry_delta = (sig_entry *)dt_data;
    // printf("%s", get_sig_type(entry_delta->sig_type));
    size_t s = get_sig_size(entry_delta);
    return (unsigned char *)(dt_data + s + sizeof(entry_delta->sig_type) + sizeof(entry_delta->size_low) + sizeof(entry_delta->size_high));
}

unsigned char *delta_patch(char *outfile, size_t *outSize, unsigned char *delta, size_t dsize, unsigned char *base, size_t size)
{

    size_t index = 0;
    unsigned char *databuf = NULL;

    size_t databuf_size = 0;
    sig_entry *entry_delta_blob = (sig_entry *)get_delta_blob_sig(delta);
    unsigned short sizeX = 0;
    size_t cSize = 0;
    size_t blob_size = get_sig_size(entry_delta_blob);

    delta_blob *blob = (delta_blob *)entry_delta_blob->value;
    printf("\nMerge delta database...");
    printf("\nMergeSize: %d - CRC: %x", blob->mergeSize, blob->mergeCrc);
    unsigned char *deta_blob = blob->data_blob;
    databuf = (unsigned char *)malloc(dsize + size);
    do
    {
        // printf("\nIndex: 0x%x", index);
        sizeX = *(unsigned short *)(deta_blob + index);
        index += 2;
        if (GetMSB(sizeX))
        {
            unsigned int offset = *(unsigned int *)(deta_blob + index);
            cSize = (sizeX & 0x7fff) + 6;
            // printf("\nAppend 0x%08x bytes from base at offset 0x%08x to the new file", cSize, offset);
            memcpy(databuf + databuf_size, base + offset, cSize);
            databuf_size += cSize;
            index += 4;
        }
        else
        {
            // printf("\nAppend 0x%08x bytes from the current place in dlta to the new file", sizeX);
            memcpy(databuf + databuf_size, deta_blob + index, sizeX);
            databuf_size += sizeX;
            index += sizeX;
        }
    } while (index < blob_size - 8);

    FILE *out_file = fopen(outfile, "wb");
    fwrite(databuf, databuf_size, 1, out_file);
    fclose(out_file);

    *outSize = databuf_size;
    return databuf;
}

unsigned char *prepare_deltapatch(char *outfile, size_t *out_size, char *delta_file, char *base_file)
{
    FILE *h_delta_file = NULL;
    FILE *h_base_file = NULL;
    unsigned char *delta_buf = NULL;
    unsigned char *base_buf = NULL;
    size_t delta_file_size = 0;
    size_t base_file_size = 0;
    unsigned char *out_buf = NULL;

    h_delta_file = fopen(delta_file, "rb");
    if (h_delta_file)
    {
        delta_file_size = get_file_size(h_delta_file);
        delta_buf = (unsigned char *)malloc(delta_file_size);
        if (delta_buf)
        {
            fread(delta_buf, delta_file_size, 1, h_delta_file);
        }

        h_base_file = fopen(base_file, "rb");
        if (h_base_file)
        {
            base_file_size = get_file_size(h_base_file);
            base_buf = (unsigned char *)malloc(base_file_size);
            if (base_buf)
            {
                fread(base_buf, base_file_size, 1, h_base_file);
            }
            fclose(h_base_file);
        }
        fclose(h_delta_file);
    }
    if (delta_buf != NULL && base_buf != NULL)
    {
        size_t outSize = 0;
        out_buf = delta_patch(outfile, &outSize, delta_buf, delta_file_size, base_buf, base_file_size);
        *out_size = outSize;
    }

    if (delta_buf != NULL)
    {
        free(delta_buf);
    }
    if (base_buf != NULL)
    {
        free(base_buf);
    }
    return out_buf;
}

int main(int argc, char *argv[])
{
    if (argc < 3)
    {
        printf("\nUsage:");
        printf("\n%s out_folder vdm_base [vdm_dlta] ", argv[0]);
        printf("\nEg.");
        printf("\nwdextract.exe mpavdlta.vdm");
        printf("\n%s mpavdlta_vdm_data_folder mpavdlta.vdm.extracted", argv[0]);
        printf("\n%s mpavdlta_vdm_data_folder mpavbase.vdm.extracted mpavdlta.vdm.extracted ", argv[0]);

        // for (int i = 0; i < 0xff; i++)
        // {
        //     const char *type = get_sig_type(i);
        //     if (strcmp(type, "SIGNATURE_TYPE_UNKNOWN") != 0)
        //     {
        //         printf("\n0x%02x:%s", i, get_sig_type(i));
        //     }
        // }
        // argv = args;
        // argc = 4;
        return -1;

    }

    FILE *h_file = NULL;
    FILE *out_file = NULL;
    size_t i = 0;
    sig_entry *entry = NULL;
    int sig_enum[0xff] = {0};

    char threatName[0x100] = {0};
    char sig_out_file[0x100] = {0};
    char lua_sign_out_file[0x100] = {0};
    char friendly_sign_out_file[0x100] = {0};
    char pehstr_sig_out_file[0x100] = {0};

    size_t threat_index = 0;

    out_folder = argv[1];
    char *file_path = argv[2];

    size_t nPEHstrSig = 0;
    size_t nOtherSig = 0;
    size_t threat_length = 0;
    size_t out_length = 0;
    size_t file_size = 0;
    unsigned char *buf = NULL;

    friendly_buffer = (unsigned char *)malloc(536870912);            
    lua_buffer = (unsigned char *)malloc(536870912);                 
    unsigned char *out_buf = (unsigned char *)malloc(536870912 * 2); 
    unsigned char *pehstr_buf = (unsigned char *)malloc(536870912);  
    unsigned char *threatBegin = NULL;
    // to lazyyy
    char* filename = strrchr(file_path, DIR_SEPARATOR);
    if (filename == NULL) {
        filename = file_path;
    }
    else {
        filename += 1;
    }
    std::filesystem::create_directories(out_folder);
    sprintf(sig_out_file, "%s%c%s.csv", out_folder, DIR_SEPARATOR, filename);
    sprintf(pehstr_sig_out_file, "%s%cthreat_only_pehstr_%s.csv", out_folder, DIR_SEPARATOR, filename);
    sprintf(lua_sign_out_file, "%s%clua_standalone_sig_%s.csv", out_folder, DIR_SEPARATOR, filename);
    sprintf(friendly_sign_out_file, "%s%cfriendly_hash_sig_%s.csv", out_folder, DIR_SEPARATOR, filename);

    
    if (argc == 3)
    {
        h_file = fopen(file_path, "rb");
        if (h_file)
        {
            file_size = get_file_size(h_file);
            buf = (unsigned char *)malloc(file_size);
            if (buf)
            {
                fread(buf, file_size, 1, h_file);
            }
            fclose(h_file);
        }
        else
        {
            printf("\nRead file error");
        }
    }
    else if (argc == 4)
    {
        char *delta_path = argv[3];
        char out_path[1024] = {0};
        sprintf(out_path, "%s%cdelta_patched.vdm", out_folder, DIR_SEPARATOR);

        buf = prepare_deltapatch(out_path, &file_size, delta_path, file_path);
    }
    printf("\nBegin parser ...");
    if (buf)
    {
        do
        {
            memset(threatName, 0, sizeof(threatName));

            entry = (sig_entry *)(buf + i);
            sig_enum[entry->sig_type] += 1;
            threatBegin = NULL;
            threat_length = 0;
            nPEHstrSig = 0;
            nOtherSig = 0;
            if (entry->sig_type == 0x5c) // threat_begin
            {

                THREAT_BEGIN *threat = (THREAT_BEGIN *)(entry->value);
                memcpy(threatName, threat->name, threat->nameSize);
                fix_file_name(threatName);
                // printf("\nThreat: %s", threatName);
                threatBegin = out_buf + out_length;
                out_length += print_sig(out_buf + out_length, threatName, entry);

                do
                {
                    i += sizeof(entry->sig_type) + sizeof(entry->size_low) + sizeof(entry->size_high);
                    i += get_sig_size(entry);
                    entry = (sig_entry *)(buf + i);
                    sig_enum[entry->sig_type] += 1;
                    out_length += print_sig(out_buf + out_length, threatName, entry);
                    if (entry->sig_type == 0x61)
                    {
                        nPEHstrSig += 1;
                    }
                    else if (entry->sig_type != 0x5d)
                    {
                        nOtherSig += 1;
                    }
                } while (entry->sig_type != 0x5d); // threat end
                threat_length = out_buf + out_length - threatBegin;
                if (nPEHstrSig != 0 && nOtherSig == 0)
                {
                    memcpy(pehstr_buf + threat_index, threatBegin, threat_length);
                    threat_index += threat_length;
                }
            }

            i += sizeof(entry->sig_type) + sizeof(entry->size_low) + sizeof(entry->size_high);
            i += get_sig_size(entry);

        } while (i < file_size);

        free(buf);
        printf("\nParse completed:");
        for (int j = 0; j < 0xff; j++)
        {
            if (sig_enum[j] > 0)
            {
                printf("\n0x%08x sigs of 0x%08x_%s", sig_enum[j], j, get_sig_type(j));
            }
        }

        char header[] = "threat_name,sig_type,sig_data\r\n";
        if ((out_file = fopen(sig_out_file, "wb")) == NULL)
        {
            return -1;
        }
        fwrite(header, strlen(header), 1, out_file);
        fwrite(out_buf, out_length, 1, out_file);
        fclose(out_file);

        if (lua_buffer_index > 0)
        {
            char header_lua[] = "threat,lua_attr,category,size,hexdata\r\n";
            if ((out_file = fopen(lua_sign_out_file, "wb")) == NULL)
            {
                return -1;
            }
            fwrite(header_lua, strlen(header_lua), 1, out_file);
            fwrite(lua_buffer, lua_buffer_index, 1, out_file);
            fclose(out_file);
        }
        
        if (friendly_buffer_index > 0)
        {
            char header_friendly[] = "type,hash\r\n";
            if ((out_file = fopen(friendly_sign_out_file, "wb")) == NULL)
            {
                return -1;
            }
            fwrite(header_friendly, strlen(header_friendly), 1, out_file);
            fwrite(friendly_buffer, friendly_buffer_index, 1, out_file);
            fclose(out_file);
        }
       
        if (threat_index > 0)
        {

            FILE *outpe_file = fopen(pehstr_sig_out_file, "wb");
            fwrite(header, strlen(header), 1, outpe_file);
            fwrite(pehstr_buf, threat_index, 1, outpe_file);
            fclose(outpe_file);
        }
    }

    
    free(lua_buffer);
    free(friendly_buffer);
    free(out_buf);
    free(pehstr_buf);

    return 0;
}

// g++ .\extract_sig.cpp -o .\extract_sig.exe -std=c++17 -Wall -lstdc++fs
// g++ .\extract_sig.cpp -o .\extract_sig.out -std=c++17 -Wall -lstdc++fs