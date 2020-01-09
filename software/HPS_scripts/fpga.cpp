#include "fpga.h"
#include <QDebug>

#include <unistd.h>
#include <stdint.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>
#include <fcntl.h>

#include <sys/mman.h>
#include "socal/socal.h"
#include "socal/hps.h"
#include "socal/alt_gpio.h"

// QSyS dependent address
#define FPGA_LED_PIO_BASE 0x3000
#define FPGA_SW_PIO_BASE 0x4000
#define FPGA_DDC_DATA_0_BASE 0x5000
#define FPGA_DDC_DATA_1_BASE 0x6000
#define FPGA_DDC_DATA_2_BASE 0x01e0
#define FPGA_DDC_DATA_3_BASE 0x01d0
#define FPGA_DDC_DATA_4_BASE 0x01c0
#define FPGA_DDC_DATA_5_BASE 0x01b0
#define FPGA_DDC_DATA_6_BASE 0x01a0
#define FPGA_DDC_DATA_7_BASE 0x0190
#define FPGA_DDC_DATA_8_BASE 0x0180
#define FPGA_DDC_DATA_9_BASE 0x0170
#define FPGA_DDC_DATA_10_BASE 0x0160
#define FPGA_DDC_DATA_11_BASE 0x0150
#define FPGA_DDC_DATA_12_BASE 0x0140
#define FPGA_DDC_DATA_13_BASE 0x0130
#define FPGA_DDC_DATA_14_BASE 0x0120
#define FPGA_DDC_DATA_15_BASE 0x0110
#define FPGA_DDC_DATA_16_BASE 0x0100
#define FPGA_DDC_DATA_17_BASE 0x00f0
#define FPGA_DDC_DATA_18_BASE 0x00e0
#define FPGA_DDC_DATA_19_BASE 0x00d0
#define FPGA_DDC_DATA_20_BASE 0x00c0
#define FPGA_DDC_DATA_21_BASE 0x00b0
#define FPGA_DDC_DATA_22_BASE 0x00a0
#define FPGA_DDC_DATA_23_BASE 0x0090
#define FPGA_DDC_DATA_24_BASE 0x0080
#define FPGA_DDC_DATA_25_BASE 0x0070
#define FPGA_DDC_DATA_26_BASE 0x0060
#define FPGA_DDC_DATA_27_BASE 0x0050
#define FPGA_DDC_DATA_28_BASE 0x0040
#define FPGA_DDC_DATA_29_BASE 0x0030
#define FPGA_DDC_DATA_30_BASE 0x0020
#define FPGA_DDC_DATA_31_BASE 0x0010
#define FPGA_PPS_COUNT_OUT_BASE 0x01f0
#define FPGA_DCC_TIME_OUT_BASE 0x7000
#define FPGA_READ_PIO_BASE 0x8000

// ///////////////////////////////////////
// memory map

#define HW_REGS_BASE (ALT_STM_OFST)
#define HW_REGS_SPAN (0x04000000)
#define HW_REGS_MASK (HW_REGS_SPAN - 1)

FPGA::FPGA() : m_bIsVideoEnabled(false)
{
    m_file_mem = open("/dev/mem", (O_RDWR | O_SYNC));
    virtual_base = mmap(NULL, HW_REGS_SPAN, (PROT_READ | PROT_WRITE), MAP_SHARED, m_file_mem, HW_REGS_BASE);
    m_bInitSuccess = Init();
    if (!m_bInitSuccess)
        qDebug() << "FPGA init failed!!!\r\n";
}

FPGA::~FPGA()
{
    close(m_file_mem);
}

bool FPGA::Init()
{
    bool bSuccess = false;

    if (m_file_mem != -1)
    {
        virtual_base = mmap(NULL, HW_REGS_SPAN, (PROT_READ | PROT_WRITE), MAP_SHARED, m_file_mem, HW_REGS_BASE);
        if (virtual_base == MAP_FAILED)
        {
        }
        else
        {
            m_led_base = (uint8_t *)virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FPGA_LED_PIO_BASE) & (unsigned long)(HW_REGS_MASK));
            m_sw_base = (uint8_t *)virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FPGA_SW_PIO_BASE) & (unsigned long)(HW_REGS_MASK));
            m_dcc_peak_base = (uint8_t *)virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FPGA_DCC_PEAK_PIO_BASE) & (unsigned long)(HW_REGS_MASK));
            m_dcc_tail_base = (uint8_t *)virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FPGA_DCC_TAIL_PIO_BASE) & (unsigned long)(HW_REGS_MASK));
            m_dcc_time_base = (uint8_t *)virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FPGA_DCC_TIME_PIO_BASE) & (unsigned long)(HW_REGS_MASK));
            m_read_base = (uint8_t *)virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FPGA_READ_PIO_BASE) & (unsigned long)(HW_REGS_MASK));
            bSuccess = true;
        }
    }

    return bSuccess;
}

bool FPGA::DataRead(uint32_t *mask)
{
    //    if (!m_bInitSuccess)
    //        return false;

    *mask = *(uint32_t *)m_dcc_peak_base;
    return true;
}

//bool FPGA::LedSet(int mask){
//    if (!m_bInitSuccess)
//        return false;

//    //qDebug() << "FPGA:LedSet\r\n";
//    //*(uint32_t *)m_led_base = mask;
//    return true;
//}

bool FPGA::SwitchRead(uint16_t *mask)
{
    if (!m_bInitSuccess)
        return false;

    *mask = *(uint16_t *)m_sw_base;
    return true;
}

bool FPGA::ReadSet(int mask)
{
    //    if (!m_bInitSuccess)
    //        return false;

    *(uint32_t *)m_read_base = mask;
    return true;
}

bool FPGA::DccPeakRead(uint32_t *mask)
{
    //    if (!m_bInitSuccess)
    //        return false;

    *mask = *(uint32_t *)m_dcc_peak_base;
    return true;
}

bool FPGA::DccTailRead(uint32_t *mask)
{
    //    if (!m_bInitSuccess)
    //        return false;

    *mask = *(uint32_t *)m_dcc_tail_base;
    return true;
}

bool FPGA::DccTimeRead(uint32_t *mask)
{
    //    if (!m_bInitSuccess)
    //        return false;

    *mask = *(uint32_t *)m_dcc_time_base;
    return true;
}
