USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/teclast/x80power_b2n4/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := x86
TARGET_ARCH_VARIANT := silvermont
TARGET_CPU_ABI_LIST := x86,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := x86,armeabi-v7a,armeabi
TARGET_BOOTLOADER_BOARD_NAME := x80power_b2n4

BOARD_KERNEL_CMDLINE := loglevel=5 androidboot.hardware=cht_cr_mrd firmware_class.path=/system/etc/firmware i915.fastboot=1 memmap=4M$0x5c400000 vga=current i915.modeset=1 drm.vblankoffdelay=1 enforcing=0 androidboot.selinux=permissive console=ttyS0,115200n8 bootboost=1 pm_suspend_debug=1 pstore.backend=ramoops
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x2048

# PowerHAL
INTEL_POWER_HAL_INTERACTIVE_GOV := true

# Binder
TARGET_USES_64_BIT_BINDER := true

# CPUset
ENABLE_CPUSETS := true


# Graphics
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_intel.so
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000


# Houdini
BUILD_ARM_FOR_X86 := true


# Linker
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 31457280
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 31457280
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 17179869184
BOARD_CACHEIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_PREBUILT_KERNEL := device/teclast/x80power_b2n4/prebuilt/kernel

DEVICE_RESOLUTION := 1200x1920
#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
