#ifndef __CUDACC__
#define __CUDACC__
#endif

#include <cuda.h>
#include <cuda_runtime.h>
#include <device_launch_parameters.h>
#include <cuda_device_runtime_api.h>
#include <device_functions.h>
#include <iostream>
#include <chrono>

template<int ArraySize>
struct WarpRegisterArray
{
private:
    int mem[(1 + (ArraySize - 1) / 32)];

    // main thread broadcasts index
    __device__ int broadcastIndexFromMainThread(const unsigned int mask, int index)
    {
        return __shfl_sync(mask, index, 0);
    }

    // main thread broadcasts data (to set)
    __device__ int broadcastDataFromMainThread(const unsigned int mask, int index, int data)
    {
        return __shfl_sync(mask, data, 0);
    }

    // main thread knows where the data has to come from
    __device__ unsigned int gatherData(const unsigned int mask, int data, int row)
    {
        return __shfl_sync(mask, data, row);
    }



public:
    __device__ unsigned int get(const int index)
    {
        const int id = threadIdx.x;        
        constexpr unsigned int mask = 0xffffffff;
        const int indexReceived = broadcastIndexFromMainThread(mask, index);
        const int rowReceived = indexReceived / (1 + (ArraySize - 1) / 32);
        int result = 0;
        if (rowReceived == id)
        {
            const int column = indexReceived % (1 + (ArraySize - 1) / 32);
            switch (column)
            {
            case 0: result = mem[0]; break;
            case 1: result = mem[1]; break;
            case 2: result = mem[2]; break;
            case 3: result = mem[3]; break;
            case 4: result = mem[4]; break;
            case 5: result = mem[5]; break;
            case 6: result = mem[6]; break;
            case 7: result = mem[7]; break;
            case 8: result = mem[8]; break;
            case 9: result = mem[9]; break;
            case 10: result = mem[10]; break;
            case 11: result = mem[11]; break;
            case 12: result = mem[12]; break;
            case 13: result = mem[13]; break;
            case 14: result = mem[14]; break;
            case 15: result = mem[15]; break;
            case 16: result = mem[16]; break;
            case 17: result = mem[17]; break;
            case 18: result = mem[18]; break;
            case 19: result = mem[19]; break;
            case 20: result = mem[20]; break;
            case 21: result = mem[21]; break;
            case 22: result = mem[22]; break;
            case 23: result = mem[23]; break;
            case 24: result = mem[24]; break;
            case 25: result = mem[25]; break;
            case 26: result = mem[26]; break;
            case 27: result = mem[27]; break;
            case 28: result = mem[28]; break;
            case 29: result = mem[29]; break;
            case 30: result = mem[30]; break;
            case 31: result = mem[31]; break;
            case 32: result = mem[32]; break;
            case 33: result = mem[33]; break;
            case 34: result = mem[34]; break;
            case 35: result = mem[35]; break;
            case 36: result = mem[36]; break;
            case 37: result = mem[37]; break;
            case 38: result = mem[38]; break;
            case 39: result = mem[39]; break;
            case 40: result = mem[40]; break;
            case 41: result = mem[41]; break;
            case 42: result = mem[42]; break;
            case 43: result = mem[43]; break;
            case 44: result = mem[44]; break;
            case 45: result = mem[45]; break;
            case 46: result = mem[46]; break;
            case 47: result = mem[47]; break;
            case 48: result = mem[48]; break;
            case 49: result = mem[49]; break;
            case 50: result = mem[50]; break;
            case 51: result = mem[51]; break;
            case 52: result = mem[52]; break;
            case 53: result = mem[53]; break;
            case 54: result = mem[54]; break;
            case 55: result = mem[55]; break;
            case 56: result = mem[56]; break;
            case 57: result = mem[57]; break;
            case 58: result = mem[58]; break;
            case 59: result = mem[59]; break;
            case 60: result = mem[60]; break;
            case 61: result = mem[61]; break;
            case 62: result = mem[62]; break;
            case 63: result = mem[63]; break;
            case 64: result = mem[64]; break;
            case 65: result = mem[65]; break;
            case 66: result = mem[66]; break;
            case 67: result = mem[67]; break;
            case 68: result = mem[68]; break;
            case 69: result = mem[69]; break;
            case 70: result = mem[70]; break;
            case 71: result = mem[71]; break;
            case 72: result = mem[72]; break;
            case 73: result = mem[73]; break;
            case 74: result = mem[74]; break;
            case 75: result = mem[75]; break;
            case 76: result = mem[76]; break;
            case 77: result = mem[77]; break;
            case 78: result = mem[78]; break;
            case 79: result = mem[79]; break;
            case 80: result = mem[80]; break;
            case 81: result = mem[81]; break;
            case 82: result = mem[82]; break;
            case 83: result = mem[83]; break;
            case 84: result = mem[84]; break;
            case 85: result = mem[85]; break;
            case 86: result = mem[86]; break;
            case 87: result = mem[87]; break;
            case 88: result = mem[88]; break;
            case 89: result = mem[89]; break;
            case 90: result = mem[90]; break;
            case 91: result = mem[91]; break;
            case 92: result = mem[92]; break;
            case 93: result = mem[93]; break;
            case 94: result = mem[94]; break;
            case 95: result = mem[95]; break;
            case 96: result = mem[96]; break;
            case 97: result = mem[97]; break;
            case 98: result = mem[98]; break;
            case 99: result = mem[99]; break;
            case 100: result = mem[100]; break;
            case 101: result = mem[101]; break;
            case 102: result = mem[102]; break;
            case 103: result = mem[103]; break;
            case 104: result = mem[104]; break;
            case 105: result = mem[105]; break;
            case 106: result = mem[106]; break;
            case 107: result = mem[107]; break;
            case 108: result = mem[108]; break;
            case 109: result = mem[109]; break;
            case 110: result = mem[110]; break;
            case 111: result = mem[111]; break;
            case 112: result = mem[112]; break;
            case 113: result = mem[113]; break;
            case 114: result = mem[114]; break;
            case 115: result = mem[115]; break;
            case 116: result = mem[116]; break;
            case 117: result = mem[117]; break;
            case 118: result = mem[118]; break;
            case 119: result = mem[119]; break;
            case 120: result = mem[120]; break;
            case 121: result = mem[121]; break;
            case 122: result = mem[122]; break;
            case 123: result = mem[123]; break;
            case 124: result = mem[124]; break;
            case 125: result = mem[125]; break;
            case 126: result = mem[126]; break;
            case 127: result = mem[127]; break;
            case 128: result = mem[128]; break;
            case 129: result = mem[129]; break;
            case 130: result = mem[130]; break;
            case 131: result = mem[131]; break;
            case 132: result = mem[132]; break;
            case 133: result = mem[133]; break;
            case 134: result = mem[134]; break;
            case 135: result = mem[135]; break;
            case 136: result = mem[136]; break;
            case 137: result = mem[137]; break;
            case 138: result = mem[138]; break;
            case 139: result = mem[139]; break;
            case 140: result = mem[140]; break;
            case 141: result = mem[141]; break;
            case 142: result = mem[142]; break;
            case 143: result = mem[143]; break;
            case 144: result = mem[144]; break;
            case 145: result = mem[145]; break;
            case 146: result = mem[146]; break;
            case 147: result = mem[147]; break;
            case 148: result = mem[148]; break;
            case 149: result = mem[149]; break;
            case 150: result = mem[150]; break;
            case 151: result = mem[151]; break;
            case 152: result = mem[152]; break;
            case 153: result = mem[153]; break;
            case 154: result = mem[154]; break;
            case 155: result = mem[155]; break;
            case 156: result = mem[156]; break;
            case 157: result = mem[157]; break;
            case 158: result = mem[158]; break;
            case 159: result = mem[159]; break;
            case 160: result = mem[160]; break;
            case 161: result = mem[161]; break;
            case 162: result = mem[162]; break;
            case 163: result = mem[163]; break;
            case 164: result = mem[164]; break;
            case 165: result = mem[165]; break;
            case 166: result = mem[166]; break;
            case 167: result = mem[167]; break;
            case 168: result = mem[168]; break;
            case 169: result = mem[169]; break;
            case 170: result = mem[170]; break;
            case 171: result = mem[171]; break;
            case 172: result = mem[172]; break;
            case 173: result = mem[173]; break;
            case 174: result = mem[174]; break;
            case 175: result = mem[175]; break;
            case 176: result = mem[176]; break;
            case 177: result = mem[177]; break;
            case 178: result = mem[178]; break;
            case 179: result = mem[179]; break;
            case 180: result = mem[180]; break;
            case 181: result = mem[181]; break;
            case 182: result = mem[182]; break;
            case 183: result = mem[183]; break;
            case 184: result = mem[184]; break;
            case 185: result = mem[185]; break;
            case 186: result = mem[186]; break;
            case 187: result = mem[187]; break;
            case 188: result = mem[188]; break;
            case 189: result = mem[189]; break;
            case 190: result = mem[190]; break;
            case 191: result = mem[191]; break;
            case 192: result = mem[192]; break;
            case 193: result = mem[193]; break;
            case 194: result = mem[194]; break;
            case 195: result = mem[195]; break;
            case 196: result = mem[196]; break;
            case 197: result = mem[197]; break;
            case 198: result = mem[198]; break;
            case 199: result = mem[199]; break;
            case 200: result = mem[200]; break;
            case 201: result = mem[201]; break;
            case 202: result = mem[202]; break;
            case 203: result = mem[203]; break;
            case 204: result = mem[204]; break;
            case 205: result = mem[205]; break;
            case 206: result = mem[206]; break;
            case 207: result = mem[207]; break;
            case 208: result = mem[208]; break;
            case 209: result = mem[209]; break;
            case 210: result = mem[210]; break;
            case 211: result = mem[211]; break;
            case 212: result = mem[212]; break;
            case 213: result = mem[213]; break;
            case 214: result = mem[214]; break;
            case 215: result = mem[215]; break;
            case 216: result = mem[216]; break;
            case 217: result = mem[217]; break;
            case 218: result = mem[218]; break;
            case 219: result = mem[219]; break;
            case 220: result = mem[220]; break;
            case 221: result = mem[221]; break;
            case 222: result = mem[222]; break;
            case 223: result = mem[223]; break;
            case 224: result = mem[224]; break;
            case 225: result = mem[225]; break;
            case 226: result = mem[226]; break;
            case 227: result = mem[227]; break;
            case 228: result = mem[228]; break;
            case 229: result = mem[229]; break;
            case 230: result = mem[230]; break;
            case 231: result = mem[231]; break;
            case 232: result = mem[232]; break;
            case 233: result = mem[233]; break;
            case 234: result = mem[234]; break;
            case 235: result = mem[235]; break;
            case 236: result = mem[236]; break;
            case 237: result = mem[237]; break;
            case 238: result = mem[238]; break;
            case 239: result = mem[239]; break;
            case 240: result = mem[240]; break;
            case 241: result = mem[241]; break;
            case 242: result = mem[242]; break;
            case 243: result = mem[243]; break;
            case 244: result = mem[244]; break;
            case 245: result = mem[245]; break;
            case 246: result = mem[246]; break;
            case 247: result = mem[247]; break;
            case 248: result = mem[248]; break;
            case 249: result = mem[249]; break;
            case 250: result = mem[250]; break;
            case 251: result = mem[251]; break;
            case 252: result = mem[252]; break;
            case 253: result = mem[253]; break;
            case 254: result = mem[254]; break;
            case 255: result = mem[255]; break;
            default:break;
            }
        }
        // main thread computes the right lane without need to receive
        return gatherData(mask, result, rowReceived);
    }
    __device__ void set(const unsigned int data, const int index)
    {
        const int id = threadIdx.x;
        constexpr unsigned int mask = 0xffffffff;
        const int indexReceived = broadcastIndexFromMainThread(mask, index);
        const int dataReceived = broadcastIndexFromMainThread(mask, data);
        const int rowReceived = indexReceived / (1 + (ArraySize - 1) / 32);
        int result = 0;
        if (rowReceived == id)
        {
            const int column = indexReceived % (1 + (ArraySize - 1) / 32);
            switch (column)
            {
            case 0:  mem[0] = dataReceived; break;
            case 1:  mem[1] = dataReceived; break;
            case 2:  mem[2] = dataReceived; break;
            case 3:  mem[3] = dataReceived; break;
            case 4:  mem[4] = dataReceived; break;
            case 5:  mem[5] = dataReceived; break;
            case 6:  mem[6] = dataReceived; break;
            case 7:  mem[7] = dataReceived; break;
            case 8:  mem[8] = dataReceived; break;
            case 9:  mem[9] = dataReceived; break;
            case 10: mem[10] = dataReceived; break;
            case 11: mem[11] = dataReceived; break;
            case 12: mem[12] = dataReceived; break;
            case 13: mem[13] = dataReceived; break;
            case 14: mem[14] = dataReceived; break;
            case 15: mem[15] = dataReceived; break;
            case 16: mem[16] = dataReceived; break;
            case 17: mem[17] = dataReceived; break;
            case 18: mem[18] = dataReceived; break;
            case 19: mem[19] = dataReceived; break;
            case 20: mem[20] = dataReceived; break;
            case 21: mem[21] = dataReceived; break;
            case 22: mem[22] = dataReceived; break;
            case 23: mem[23] = dataReceived; break;
            case 24: mem[24] = dataReceived; break;
            case 25: mem[25] = dataReceived; break;
            case 26: mem[26] = dataReceived; break;
            case 27: mem[27] = dataReceived; break;
            case 28: mem[28] = dataReceived; break;
            case 29: mem[29] = dataReceived; break;
            case 30: mem[30] = dataReceived; break;
            case 31: mem[31] = dataReceived; break;
            case 32: mem[32] = dataReceived; break;
            case 33: mem[33] = dataReceived; break;
            case 34: mem[34] = dataReceived; break;
            case 35: mem[35] = dataReceived; break;
            case 36: mem[36] = dataReceived; break;
            case 37: mem[37] = dataReceived; break;
            case 38: mem[38] = dataReceived; break;
            case 39: mem[39] = dataReceived; break;
            case 40: mem[40] = dataReceived; break;
            case 41: mem[41] = dataReceived; break;
            case 42: mem[42] = dataReceived; break;
            case 43: mem[43] = dataReceived; break;
            case 44: mem[44] = dataReceived; break;
            case 45: mem[45] = dataReceived; break;
            case 46: mem[46] = dataReceived; break;
            case 47: mem[47] = dataReceived; break;
            case 48: mem[48] = dataReceived; break;
            case 49: mem[49] = dataReceived; break;
            case 50: mem[50] = dataReceived; break;
            case 51: mem[51] = dataReceived; break;
            case 52: mem[52] = dataReceived; break;
            case 53: mem[53] = dataReceived; break;
            case 54: mem[54] = dataReceived; break;
            case 55: mem[55] = dataReceived; break;
            case 56: mem[56] = dataReceived; break;
            case 57: mem[57] = dataReceived; break;
            case 58: mem[58] = dataReceived; break;
            case 59: mem[59] = dataReceived; break;
            case 60: mem[60] = dataReceived; break;
            case 61: mem[61] = dataReceived; break;
            case 62: mem[62] = dataReceived; break;
            case 63: mem[63] = dataReceived; break;
            case 64: mem[64] = dataReceived; break;
            case 65: mem[65] = dataReceived; break;
            case 66: mem[66] = dataReceived; break;
            case 67: mem[67] = dataReceived; break;
            case 68: mem[68] = dataReceived; break;
            case 69: mem[69] = dataReceived; break;
            case 70: mem[70] = dataReceived; break;
            case 71: mem[71] = dataReceived; break;
            case 72: mem[72] = dataReceived; break;
            case 73: mem[73] = dataReceived; break;
            case 74: mem[74] = dataReceived; break;
            case 75: mem[75] = dataReceived; break;
            case 76: mem[76] = dataReceived; break;
            case 77: mem[77] = dataReceived; break;
            case 78: mem[78] = dataReceived; break;
            case 79: mem[79] = dataReceived; break;
            case 80: mem[80] = dataReceived; break;
            case 81: mem[81] = dataReceived; break;
            case 82: mem[82] = dataReceived; break;
            case 83: mem[83] = dataReceived; break;
            case 84: mem[84] = dataReceived; break;
            case 85: mem[85] = dataReceived; break;
            case 86: mem[86] = dataReceived; break;
            case 87: mem[87] = dataReceived; break;
            case 88: mem[88] = dataReceived; break;
            case 89: mem[89] = dataReceived; break;
            case 90: mem[90] = dataReceived; break;
            case 91: mem[91] = dataReceived; break;
            case 92: mem[92] = dataReceived; break;
            case 93: mem[93] = dataReceived; break;
            case 94: mem[94] = dataReceived; break;
            case 95: mem[95] = dataReceived; break;
            case 96: mem[96] = dataReceived; break;
            case 97: mem[97] = dataReceived; break;
            case 98: mem[98] = dataReceived; break;
            case 99: mem[99] = dataReceived; break;
            case 100: mem[100] = dataReceived; break;
            case 101: mem[101] = dataReceived; break;
            case 102: mem[102] = dataReceived; break;
            case 103: mem[103] = dataReceived; break;
            case 104: mem[104] = dataReceived; break;
            case 105: mem[105] = dataReceived; break;
            case 106: mem[106] = dataReceived; break;
            case 107: mem[107] = dataReceived; break;
            case 108: mem[108] = dataReceived; break;
            case 109: mem[109] = dataReceived; break;
            case 110: mem[110] = dataReceived; break;
            case 111: mem[111] = dataReceived; break;
            case 112: mem[112] = dataReceived; break;
            case 113: mem[113] = dataReceived; break;
            case 114: mem[114] = dataReceived; break;
            case 115: mem[115] = dataReceived; break;
            case 116: mem[116] = dataReceived; break;
            case 117: mem[117] = dataReceived; break;
            case 118: mem[118] = dataReceived; break;
            case 119: mem[119] = dataReceived; break;
            case 120: mem[120] = dataReceived; break;
            case 121: mem[121] = dataReceived; break;
            case 122: mem[122] = dataReceived; break;
            case 123: mem[123] = dataReceived; break;
            case 124: mem[124] = dataReceived; break;
            case 125: mem[125] = dataReceived; break;
            case 126: mem[126] = dataReceived; break;
            case 127: mem[127] = dataReceived; break;
            case 128: mem[128] = dataReceived; break;
            case 129: mem[129] = dataReceived; break;
            case 130: mem[130] = dataReceived; break;
            case 131: mem[131] = dataReceived; break;
            case 132: mem[132] = dataReceived; break;
            case 133: mem[133] = dataReceived; break;
            case 134: mem[134] = dataReceived; break;
            case 135: mem[135] = dataReceived; break;
            case 136: mem[136] = dataReceived; break;
            case 137: mem[137] = dataReceived; break;
            case 138: mem[138] = dataReceived; break;
            case 139: mem[139] = dataReceived; break;
            case 140: mem[140] = dataReceived; break;
            case 141: mem[141] = dataReceived; break;
            case 142: mem[142] = dataReceived; break;
            case 143: mem[143] = dataReceived; break;
            case 144: mem[144] = dataReceived; break;
            case 145: mem[145] = dataReceived; break;
            case 146: mem[146] = dataReceived; break;
            case 147: mem[147] = dataReceived; break;
            case 148: mem[148] = dataReceived; break;
            case 149: mem[149] = dataReceived; break;
            case 150: mem[150] = dataReceived; break;
            case 151: mem[151] = dataReceived; break;
            case 152: mem[152] = dataReceived; break;
            case 153: mem[153] = dataReceived; break;
            case 154: mem[154] = dataReceived; break;
            case 155: mem[155] = dataReceived; break;
            case 156: mem[156] = dataReceived; break;
            case 157: mem[157] = dataReceived; break;
            case 158: mem[158] = dataReceived; break;
            case 159: mem[159] = dataReceived; break;
            case 160: mem[160] = dataReceived; break;
            case 161: mem[161] = dataReceived; break;
            case 162: mem[162] = dataReceived; break;
            case 163: mem[163] = dataReceived; break;
            case 164: mem[164] = dataReceived; break;
            case 165: mem[165] = dataReceived; break;
            case 166: mem[166] = dataReceived; break;
            case 167: mem[167] = dataReceived; break;
            case 168: mem[168] = dataReceived; break;
            case 169: mem[169] = dataReceived; break;
            case 170: mem[170] = dataReceived; break;
            case 171: mem[171] = dataReceived; break;
            case 172: mem[172] = dataReceived; break;
            case 173: mem[173] = dataReceived; break;
            case 174: mem[174] = dataReceived; break;
            case 175: mem[175] = dataReceived; break;
            case 176: mem[176] = dataReceived; break;
            case 177: mem[177] = dataReceived; break;
            case 178: mem[178] = dataReceived; break;
            case 179: mem[179] = dataReceived; break;
            case 180: mem[180] = dataReceived; break;
            case 181: mem[181] = dataReceived; break;
            case 182: mem[182] = dataReceived; break;
            case 183: mem[183] = dataReceived; break;
            case 184: mem[184] = dataReceived; break;
            case 185: mem[185] = dataReceived; break;
            case 186: mem[186] = dataReceived; break;
            case 187: mem[187] = dataReceived; break;
            case 188: mem[188] = dataReceived; break;
            case 189: mem[189] = dataReceived; break;
            case 190: mem[190] = dataReceived; break;
            case 191: mem[191] = dataReceived; break;
            case 192: mem[192] = dataReceived; break;
            case 193: mem[193] = dataReceived; break;
            case 194: mem[194] = dataReceived; break;
            case 195: mem[195] = dataReceived; break;
            case 196: mem[196] = dataReceived; break;
            case 197: mem[197] = dataReceived; break;
            case 198: mem[198] = dataReceived; break;
            case 199: mem[199] = dataReceived; break;
            case 200: mem[200] = dataReceived; break;
            case 201: mem[201] = dataReceived; break;
            case 202: mem[202] = dataReceived; break;
            case 203: mem[203] = dataReceived; break;
            case 204: mem[204] = dataReceived; break;
            case 205: mem[205] = dataReceived; break;
            case 206: mem[206] = dataReceived; break;
            case 207: mem[207] = dataReceived; break;
            case 208: mem[208] = dataReceived; break;
            case 209: mem[209] = dataReceived; break;
            case 210: mem[210] = dataReceived; break;
            case 211: mem[211] = dataReceived; break;
            case 212: mem[212] = dataReceived; break;
            case 213: mem[213] = dataReceived; break;
            case 214: mem[214] = dataReceived; break;
            case 215: mem[215] = dataReceived; break;
            case 216: mem[216] = dataReceived; break;
            case 217: mem[217] = dataReceived; break;
            case 218: mem[218] = dataReceived; break;
            case 219: mem[219] = dataReceived; break;
            case 220: mem[220] = dataReceived; break;
            case 221: mem[221] = dataReceived; break;
            case 222: mem[222] = dataReceived; break;
            case 223: mem[223] = dataReceived; break;
            case 224: mem[224] = dataReceived; break;
            case 225: mem[225] = dataReceived; break;
            case 226: mem[226] = dataReceived; break;
            case 227: mem[227] = dataReceived; break;
            case 228: mem[228] = dataReceived; break;
            case 229: mem[229] = dataReceived; break;
            case 230: mem[230] = dataReceived; break;
            case 231: mem[231] = dataReceived; break;
            case 232: mem[232] = dataReceived; break;
            case 233: mem[233] = dataReceived; break;
            case 234: mem[234] = dataReceived; break;
            case 235: mem[235] = dataReceived; break;
            case 236: mem[236] = dataReceived; break;
            case 237: mem[237] = dataReceived; break;
            case 238: mem[238] = dataReceived; break;
            case 239: mem[239] = dataReceived; break;
            case 240: mem[240] = dataReceived; break;
            case 241: mem[241] = dataReceived; break;
            case 242: mem[242] = dataReceived; break;
            case 243: mem[243] = dataReceived; break;
            case 244: mem[244] = dataReceived; break;
            case 245: mem[245] = dataReceived; break;
            case 246: mem[246] = dataReceived; break;
            case 247: mem[247] = dataReceived; break;
            case 248: mem[248] = dataReceived; break;
            case 249: mem[249] = dataReceived; break;
            case 250: mem[250] = dataReceived; break;
            case 251: mem[251] = dataReceived; break;
            case 252: mem[252] = dataReceived; break;
            case 253: mem[253] = dataReceived; break;
            case 254: mem[254] = dataReceived; break;
            case 255: mem[255] = dataReceived; break;
            default:break;
            }
        }
    }
};


__global__ void dynamicRegisterIndexing(int* result, int start, int stop)
{
    WarpRegisterArray<5000> arr;
    int sum = 0;

    for (int i = start; i < stop; i++)
        arr.set(1, i);

    for (int i = start; i < stop; i++)
    {
        auto data = arr.get(i);
        sum += data;
    }

    if (threadIdx.x == 0)
        result[0] = sum;
}


int main()
{
    int* data;
    cudaMallocManaged(&data, sizeof(int));
    int start, stop;
    std::cin >> start;
    std::cin >> stop;
    for (int i = 0; i < 10; i++)
    {
        dynamicRegisterIndexing <<<1, 32 >>> (data, start, stop);
        cudaDeviceSynchronize();
    }
    std::cout << "sum  = " << *data << std::endl;
    cudaFree(data);
    return 0;
}
