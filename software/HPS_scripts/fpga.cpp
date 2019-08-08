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
#define FPGA_LED_PIO_BASE       0x03000
#define FPGA_SW_PIO_BASE        0x04000
#define FPGA_DCC_PEAK_PIO_BASE  0x05000
#define FPGA_DCC_TAIL_PIO_BASE  0x06000
#define FPGA_DCC_TIME_PIO_BASE  0x07000
#define FPGA_READ_PIO_BASE      0x08000


// ///////////////////////////////////////
// memory map

#define HW_REGS_BASE ( ALT_STM_OFST )
#define HW_REGS_SPAN ( 0x04000000 )
#define HW_REGS_MASK ( HW_REGS_SPAN - 1 )


FPGA::FPGA() :
    m_bIsVideoEnabled(false)
{
    m_file_mem = open( "/dev/mem", ( O_RDWR | O_SYNC ) );
    virtual_base = mmap( NULL, HW_REGS_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, m_file_mem, HW_REGS_BASE );
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

    if (m_file_mem != -1){
        virtual_base = mmap( NULL, HW_REGS_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, m_file_mem, HW_REGS_BASE );
        if (virtual_base == MAP_FAILED){
        }else{
            m_led_base= (uint8_t *)virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + FPGA_LED_PIO_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
            m_sw_base = (uint8_t *)virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + FPGA_SW_PIO_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
            m_dcc_peak_base = (uint8_t *)virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + FPGA_DCC_PEAK_PIO_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
            m_dcc_tail_base = (uint8_t *)virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + FPGA_DCC_TAIL_PIO_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
            m_dcc_time_base = (uint8_t *)virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + FPGA_DCC_TIME_PIO_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
            m_read_base = (uint8_t *)virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + FPGA_READ_PIO_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
            bSuccess = true;
        }
    }

    return bSuccess;
}


//bool FPGA::LedSet(int mask){
//    if (!m_bInitSuccess)
//        return false;

//    //qDebug() << "FPGA:LedSet\r\n";
//    //*(uint32_t *)m_led_base = mask;
//    return true;
//}

bool FPGA::SwitchRead(uint16_t *mask){
    if (!m_bInitSuccess)
        return false;

    *mask = *(uint16_t *)m_sw_base;
    return true;

}


bool FPGA::ReadSet(int mask){
//    if (!m_bInitSuccess)
//        return false;

    *(uint32_t *)m_read_base = mask;
    return true;
}


bool FPGA::DccPeakRead(uint32_t *mask){
//    if (!m_bInitSuccess)
//        return false;

    *mask = *(uint32_t *)m_dcc_peak_base;
    return true;
}

bool FPGA::DccTailRead(uint32_t *mask){
//    if (!m_bInitSuccess)
//        return false;

    *mask = *(uint32_t *)m_dcc_tail_base;
    return true;
}

bool FPGA::DccTimeRead(uint32_t *mask){
//    if (!m_bInitSuccess)
//        return false;

    *mask = *(uint32_t *)m_dcc_time_base;
    return true;
}



