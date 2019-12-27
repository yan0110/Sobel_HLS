// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "ap_stream.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "video"
#define AUTOTB_TVIN_video  "../tv/cdatafile/c.edge_det.autotvin_video.dat"
// wrapc file define: "sob_x1"
#define AUTOTB_TVOUT_sob_x1  "../tv/cdatafile/c.edge_det.autotvout_sob_x1.dat"
#define AUTOTB_TVIN_sob_x1  "../tv/cdatafile/c.edge_det.autotvin_sob_x1.dat"
// wrapc file define: "sob_y1"
#define AUTOTB_TVOUT_sob_y1  "../tv/cdatafile/c.edge_det.autotvout_sob_y1.dat"
#define AUTOTB_TVIN_sob_y1  "../tv/cdatafile/c.edge_det.autotvin_sob_y1.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "sob_x1"
#define AUTOTB_TVOUT_PC_sob_x1  "../tv/rtldatafile/rtl.edge_det.autotvout_sob_x1.dat"
// tvout file define: "sob_y1"
#define AUTOTB_TVOUT_PC_sob_y1  "../tv/rtldatafile/rtl.edge_det.autotvout_sob_y1.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			video_depth = 0;
			sob_x1_depth = 0;
			sob_y1_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{video " << video_depth << "}\n";
			total_list << "{sob_x1 " << sob_x1_depth << "}\n";
			total_list << "{sob_y1 " << sob_y1_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int video_depth;
		int sob_x1_depth;
		int sob_y1_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void edge_det (
int video[10000],
int sob_x1[10000],
int sob_y1[10000]);

extern "C" void AESL_WRAP_edge_det (
int video[10000],
int sob_x1[10000],
int sob_y1[10000])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "sob_x1"
		aesl_fh.read(AUTOTB_TVOUT_PC_sob_x1, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_sob_x1, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_sob_x1, AESL_token); // data

			sc_bv<32> *sob_x1_pc_buffer = new sc_bv<32>[10000];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'sob_x1', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'sob_x1', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					sob_x1_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_sob_x1, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_sob_x1))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: sob_x1
				{
					// bitslice(31, 0)
					// {
						// celement: sob_x1(31, 0)
						// {
							sc_lv<32>* sob_x1_lv0_0_9999_1 = new sc_lv<32>[10000];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: sob_x1(31, 0)
						{
							// carray: (0) => (9999) @ (1)
							for (int i_0 = 0; i_0 <= 9999; i_0 += 1)
							{
								if (&(sob_x1[0]) != NULL) // check the null address if the c port is array or others
								{
									sob_x1_lv0_0_9999_1[hls_map_index].range(31, 0) = sc_bv<32>(sob_x1_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: sob_x1(31, 0)
						{
							// carray: (0) => (9999) @ (1)
							for (int i_0 = 0; i_0 <= 9999; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : sob_x1[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : sob_x1[0]
								// output_left_conversion : sob_x1[i_0]
								// output_type_conversion : (sob_x1_lv0_0_9999_1[hls_map_index]).to_uint64()
								if (&(sob_x1[0]) != NULL) // check the null address if the c port is array or others
								{
									sob_x1[i_0] = (sob_x1_lv0_0_9999_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] sob_x1_pc_buffer;
		}

		// output port post check: "sob_y1"
		aesl_fh.read(AUTOTB_TVOUT_PC_sob_y1, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_sob_y1, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_sob_y1, AESL_token); // data

			sc_bv<32> *sob_y1_pc_buffer = new sc_bv<32>[10000];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'sob_y1', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'sob_y1', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					sob_y1_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_sob_y1, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_sob_y1))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: sob_y1
				{
					// bitslice(31, 0)
					// {
						// celement: sob_y1(31, 0)
						// {
							sc_lv<32>* sob_y1_lv0_0_9999_1 = new sc_lv<32>[10000];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: sob_y1(31, 0)
						{
							// carray: (0) => (9999) @ (1)
							for (int i_0 = 0; i_0 <= 9999; i_0 += 1)
							{
								if (&(sob_y1[0]) != NULL) // check the null address if the c port is array or others
								{
									sob_y1_lv0_0_9999_1[hls_map_index].range(31, 0) = sc_bv<32>(sob_y1_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: sob_y1(31, 0)
						{
							// carray: (0) => (9999) @ (1)
							for (int i_0 = 0; i_0 <= 9999; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : sob_y1[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : sob_y1[0]
								// output_left_conversion : sob_y1[i_0]
								// output_type_conversion : (sob_y1_lv0_0_9999_1[hls_map_index]).to_uint64()
								if (&(sob_y1[0]) != NULL) // check the null address if the c port is array or others
								{
									sob_y1[i_0] = (sob_y1_lv0_0_9999_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] sob_y1_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "video"
		char* tvin_video = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video);

		// "sob_x1"
		char* tvin_sob_x1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_sob_x1);
		char* tvout_sob_x1 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_sob_x1);

		// "sob_y1"
		char* tvin_sob_y1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_sob_y1);
		char* tvout_sob_y1 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_sob_y1);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_video, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_video, tvin_video);

		sc_bv<32>* video_tvin_wrapc_buffer = new sc_bv<32>[10000];

		// RTL Name: video
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: video(31, 0)
				{
					// carray: (0) => (9999) @ (1)
					for (int i_0 = 0; i_0 <= 9999; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : video[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : video[0]
						// regulate_c_name       : video
						// input_type_conversion : video[i_0]
						if (&(video[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> video_tmp_mem;
							video_tmp_mem = video[i_0];
							video_tvin_wrapc_buffer[hls_map_index].range(31, 0) = video_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10000; i++)
		{
			sprintf(tvin_video, "%s\n", (video_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_video, tvin_video);
		}

		tcl_file.set_num(10000, &tcl_file.video_depth);
		sprintf(tvin_video, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_video, tvin_video);

		// release memory allocation
		delete [] video_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_sob_x1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_sob_x1, tvin_sob_x1);

		sc_bv<32>* sob_x1_tvin_wrapc_buffer = new sc_bv<32>[10000];

		// RTL Name: sob_x1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: sob_x1(31, 0)
				{
					// carray: (0) => (9999) @ (1)
					for (int i_0 = 0; i_0 <= 9999; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : sob_x1[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : sob_x1[0]
						// regulate_c_name       : sob_x1
						// input_type_conversion : sob_x1[i_0]
						if (&(sob_x1[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> sob_x1_tmp_mem;
							sob_x1_tmp_mem = sob_x1[i_0];
							sob_x1_tvin_wrapc_buffer[hls_map_index].range(31, 0) = sob_x1_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10000; i++)
		{
			sprintf(tvin_sob_x1, "%s\n", (sob_x1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_sob_x1, tvin_sob_x1);
		}

		tcl_file.set_num(10000, &tcl_file.sob_x1_depth);
		sprintf(tvin_sob_x1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_sob_x1, tvin_sob_x1);

		// release memory allocation
		delete [] sob_x1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_sob_y1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_sob_y1, tvin_sob_y1);

		sc_bv<32>* sob_y1_tvin_wrapc_buffer = new sc_bv<32>[10000];

		// RTL Name: sob_y1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: sob_y1(31, 0)
				{
					// carray: (0) => (9999) @ (1)
					for (int i_0 = 0; i_0 <= 9999; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : sob_y1[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : sob_y1[0]
						// regulate_c_name       : sob_y1
						// input_type_conversion : sob_y1[i_0]
						if (&(sob_y1[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> sob_y1_tmp_mem;
							sob_y1_tmp_mem = sob_y1[i_0];
							sob_y1_tvin_wrapc_buffer[hls_map_index].range(31, 0) = sob_y1_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10000; i++)
		{
			sprintf(tvin_sob_y1, "%s\n", (sob_y1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_sob_y1, tvin_sob_y1);
		}

		tcl_file.set_num(10000, &tcl_file.sob_y1_depth);
		sprintf(tvin_sob_y1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_sob_y1, tvin_sob_y1);

		// release memory allocation
		delete [] sob_y1_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		edge_det(video, sob_x1, sob_y1);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_sob_x1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_sob_x1, tvout_sob_x1);

		sc_bv<32>* sob_x1_tvout_wrapc_buffer = new sc_bv<32>[10000];

		// RTL Name: sob_x1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: sob_x1(31, 0)
				{
					// carray: (0) => (9999) @ (1)
					for (int i_0 = 0; i_0 <= 9999; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : sob_x1[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : sob_x1[0]
						// regulate_c_name       : sob_x1
						// input_type_conversion : sob_x1[i_0]
						if (&(sob_x1[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> sob_x1_tmp_mem;
							sob_x1_tmp_mem = sob_x1[i_0];
							sob_x1_tvout_wrapc_buffer[hls_map_index].range(31, 0) = sob_x1_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10000; i++)
		{
			sprintf(tvout_sob_x1, "%s\n", (sob_x1_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_sob_x1, tvout_sob_x1);
		}

		tcl_file.set_num(10000, &tcl_file.sob_x1_depth);
		sprintf(tvout_sob_x1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_sob_x1, tvout_sob_x1);

		// release memory allocation
		delete [] sob_x1_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_sob_y1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_sob_y1, tvout_sob_y1);

		sc_bv<32>* sob_y1_tvout_wrapc_buffer = new sc_bv<32>[10000];

		// RTL Name: sob_y1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: sob_y1(31, 0)
				{
					// carray: (0) => (9999) @ (1)
					for (int i_0 = 0; i_0 <= 9999; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : sob_y1[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : sob_y1[0]
						// regulate_c_name       : sob_y1
						// input_type_conversion : sob_y1[i_0]
						if (&(sob_y1[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> sob_y1_tmp_mem;
							sob_y1_tmp_mem = sob_y1[i_0];
							sob_y1_tvout_wrapc_buffer[hls_map_index].range(31, 0) = sob_y1_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10000; i++)
		{
			sprintf(tvout_sob_y1, "%s\n", (sob_y1_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_sob_y1, tvout_sob_y1);
		}

		tcl_file.set_num(10000, &tcl_file.sob_y1_depth);
		sprintf(tvout_sob_y1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_sob_y1, tvout_sob_y1);

		// release memory allocation
		delete [] sob_y1_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "video"
		delete [] tvin_video;
		// release memory allocation: "sob_x1"
		delete [] tvout_sob_x1;
		delete [] tvin_sob_x1;
		// release memory allocation: "sob_y1"
		delete [] tvout_sob_y1;
		delete [] tvin_sob_y1;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

