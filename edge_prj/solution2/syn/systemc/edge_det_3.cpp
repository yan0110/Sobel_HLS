#include "edge_det.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void edge_det::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"video_address0\" :  \"" << video_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"video_ce0\" :  \"" << video_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"video_q0\" :  \"" << video_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"video_address1\" :  \"" << video_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"video_ce1\" :  \"" << video_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"video_q1\" :  \"" << video_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_x1_address0\" :  \"" << sob_x1_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_x1_ce0\" :  \"" << sob_x1_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_x1_we0\" :  \"" << sob_x1_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_x1_d0\" :  \"" << sob_x1_d0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_x1_address1\" :  \"" << sob_x1_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_x1_ce1\" :  \"" << sob_x1_ce1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_x1_we1\" :  \"" << sob_x1_we1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_x1_d1\" :  \"" << sob_x1_d1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_y1_address0\" :  \"" << sob_y1_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_y1_ce0\" :  \"" << sob_y1_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_y1_we0\" :  \"" << sob_y1_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_y1_d0\" :  \"" << sob_y1_d0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_y1_address1\" :  \"" << sob_y1_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_y1_ce1\" :  \"" << sob_y1_ce1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_y1_we1\" :  \"" << sob_y1_we1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sob_y1_d1\" :  \"" << sob_y1_d1.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

