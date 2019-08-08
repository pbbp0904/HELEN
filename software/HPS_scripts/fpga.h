#ifndef FPGA_H
#define FPGA_H

#include <unistd.h>
#include <stdint.h>
#include <stdbool.h>


class FPGA
{
public:
    FPGA();
    ~FPGA();

    bool LedSet(int mask);
    bool SwitchRead(uint16_t *mask);
    bool DccPeakRead(uint32_t *mask);
    bool DccTailRead(uint32_t *mask);
    bool DccTimeRead(uint32_t *mask);
    bool ReadSet(int mask);


protected:
    bool m_bInitSuccess;
    int m_file_mem;
    bool m_bIsVideoEnabled;

    void *virtual_base;

    uint8_t *m_led_base;
    uint8_t *m_sw_base;

    uint8_t *m_dcc_peak_base;
    uint8_t *m_dcc_tail_base;
    uint8_t *m_dcc_time_base;

    uint8_t *m_read_base;

    bool Init();

};

#endif // FPGA_H
