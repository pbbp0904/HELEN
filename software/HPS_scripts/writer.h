#ifndef WRITER_H
#define WRITER_H

#include "fpga.h"
#include "hps.h"
#include <iostream>
#include <fstream>
#include <cstdio>
#include <ctime>

using namespace std;

class Writer
{
public:
    Writer();
    ~Writer();

    void DCCPolling();

    void DCCPoll();

    void DCCWrite();

    bool ReadData();

    void ClockRead();

    void SDSave();

private:
    HPS *hps;
    FPGA *fpga;
    FILE* datafile_peak;
    FILE* datafile_tail;
    FILE* datafile_time;
    FILE* datafile_info;
    uint16_t Status;
    uint32_t DccPeakBuffer [1000000];
    uint32_t DccTailBuffer [1000000];
    uint32_t DccTimeBuffer [1000000];
    uint32_t write_place;
    uint32_t read_place;
    time_t now;

};


#endif // WRITER_H
