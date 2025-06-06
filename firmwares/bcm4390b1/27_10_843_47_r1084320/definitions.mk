NEXMON_CHIP=CHIP_VER_BCM4390b1
NEXMON_CHIP_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_CHIP)`
NEXMON_FW_VERSION=FW_VER_27_10_843_47_r1084320
NEXMON_FW_VERSION_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_FW_VERSION)`

NEXMON_ARCH=armv7-a

RAM_FILE=fw_bcmdhd.bin_4390_b1
RAMSTART=0x2A0000
RAMSIZE=0x320000

ROM_FILE=rom.bin
ROMSTART=0x10000
ROMSIZE=0x26b000

# ucodes
UCODE0START=0x473D84
UCODE0SIZE=0x65F8
UCODE0START_PTR=0x4274A8
UCODE0SIZE_PTR=0x4274A4

UCODE1START=0x47A380
UCODE1SIZE=0x1EB48
UCODE1START_PTR=0x4274A0
UCODE1SIZE_PTR=0x42749C

UCODE2START=0x498ECC
UCODE2SIZE=0x22B80
UCODE2START_PTR=0x427498
UCODE2SIZE_PTR=0x427494

WLC_UCODE_WRITE_BL_HOOK_ADDR=0x427444

TINFLATE_OUTPUT_SIZE=$(UCODE2SIZE)

# safe restore
TEMPLATERAM0START_PTR=0x45BAF4
TEMPLATERAM0START=0x4CA588
TEMPLATERAM0SIZE_PTR=0x45BAF8
TEMPLATERAM0SIZE=0x22C4
TEMPLATERAM1START_PTR=0x45BAFC
TEMPLATERAM1START=0x4C8AC4
TEMPLATERAM1SIZE_PTR=0x045BB00
TEMPLATERAM1SIZE=0x1AC4
TEMPLATERAM2START_PTR=0x45BB04
TEMPLATERAM2START=0x4C7700
TEMPLATERAM2SIZE_PTR=0x45BB08
TEMPLATERAM2SIZE=0x13C4
TEMPLATERAM3START_PTR=0x45BB0C
TEMPLATERAM3START=0x4C509C
TEMPLATERAM3SIZE_PTR=0x45BB10
TEMPLATERAM3SIZE=0x2664

# rom patches
FP_DATA_BASE=0x2A8000
FP_DATA_END=0x2AF800
FP_DATA_LAST_PTR=0x402EFC
FP_CONFIG_ORIGBASE=0x4CC84C
FP_CONFIG_ORIGEND=0x4CEB54
FP_CONFIG_BASE_PTR_1=0x403190
FP_CONFIG_END_PTR_1=0x40318C
FP_CONFIG_BASE_PTR_2=0x4030CC
FP_CONFIG_END_PTR_2=0x4030D0
FP_CONFIG_BASE_PTR_3=0x4030EC
FP_CONFIG_END_PTR_3=0x4030F0
FP_CONFIG_BASE_PTR_4=0x41E12C
FP_CONFIG_END_PTR_4=0x41E130

N_EXTRA_FP=799
FP_CONFIG_SIZE=$$(($(FP_CONFIG_ORIGEND) - $(FP_CONFIG_ORIGBASE) + 8 * $(N_EXTRA_FP)))
FP_CONFIG_BASE=$$(($(FP_CONFIG_ORIGBASE) - 8 * $(N_EXTRA_FP)))

# tcam debug
FP_ROM_DATA_DBG_PTR=0x402E70
FP_ROM_DATA_DBG_ORIG=0x4BBA4C
FP_ROM_DATA_DBG_SZ=0x7800
FP_DBG_PTR=0x4030D4
FP_DBG_ORIG=0x4C324C
FP_DBG_SZ=0x1e50

# patch area
RECLAIM_3_END_PTR_0=0x2B4DE0
RECLAIM_3_END_PTR_1=0x41D1BC
RECLAIM_3_END_PTR_2=0x45B9F4
RECLAIM_3_ORIG_END=$(FP_CONFIG_ORIGBASE)

PATCHSIZE=0x10000
PATCHSTART=$$(($(RECLAIM_3_ORIG_END) - $(PATCHSIZE) - 8 * $(N_EXTRA_FP)))

VERSION_PTR_1=0x334968
VERSION_PTR_2=0x41E724
VERSION_PTR_3=0x420618
VERSION_PTR_4=0x41BEF4
DATETIME_PTR=0x33496C

MMU_PROTECT_ON_BL_ADDR=0x32EAF6

