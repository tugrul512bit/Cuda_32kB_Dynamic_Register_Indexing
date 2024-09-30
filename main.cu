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
using jump_func_t = void(*)(void const*);
template<class F>
jump_func_t jump_func() {
    return [](void const* ptr) { (*static_cast<F const*>(ptr))(); };
}
template<class...Fs>
void jump_table(std::size_t i, Fs const&...fs) {
    struct entry {
        jump_func_t f;
        void const* data;
        void operator()()const { f(data); }
    };
    const entry table[] = {
      {jump_func<Fs>(), std::addressof(fs)}...
    };
    table[i]();
}

__device__ unsigned int getIndex0(unsigned int* arr) { return arr[0]; }
__device__ unsigned int getIndex1(unsigned int* arr) { return arr[1]; }
__device__ unsigned int getIndex2(unsigned int* arr) { return arr[2]; }
__device__ unsigned int getIndex3(unsigned int* arr) { return arr[3]; }
__device__ unsigned int getIndex4(unsigned int* arr) { return arr[4]; }
__device__ unsigned int getIndex5(unsigned int* arr) { return arr[5]; }
__device__ unsigned int getIndex6(unsigned int* arr) { return arr[6]; }
__device__ unsigned int getIndex7(unsigned int* arr) { return arr[7]; }
__device__ unsigned int getIndex8(unsigned int* arr) { return arr[8]; }
__device__ unsigned int getIndex9(unsigned int* arr) { return arr[9]; }

__device__ unsigned int getIndex10(unsigned int* arr) { return arr[10]; }
__device__ unsigned int getIndex11(unsigned int* arr) { return arr[11]; }
__device__ unsigned int getIndex12(unsigned int* arr) { return arr[12]; }
__device__ unsigned int getIndex13(unsigned int* arr) { return arr[13]; }
__device__ unsigned int getIndex14(unsigned int* arr) { return arr[14]; }
__device__ unsigned int getIndex15(unsigned int* arr) { return arr[15]; }
__device__ unsigned int getIndex16(unsigned int* arr) { return arr[16]; }
__device__ unsigned int getIndex17(unsigned int* arr) { return arr[17]; }
__device__ unsigned int getIndex18(unsigned int* arr) { return arr[18]; }
__device__ unsigned int getIndex19(unsigned int* arr) { return arr[19]; }

__device__ unsigned int getIndex20(unsigned int* arr) { return arr[20]; }
__device__ unsigned int getIndex21(unsigned int* arr) { return arr[21]; }
__device__ unsigned int getIndex22(unsigned int* arr) { return arr[22]; }
__device__ unsigned int getIndex23(unsigned int* arr) { return arr[23]; }
__device__ unsigned int getIndex24(unsigned int* arr) { return arr[24]; }
__device__ unsigned int getIndex25(unsigned int* arr) { return arr[25]; }
__device__ unsigned int getIndex26(unsigned int* arr) { return arr[26]; }
__device__ unsigned int getIndex27(unsigned int* arr) { return arr[27]; }
__device__ unsigned int getIndex28(unsigned int* arr) { return arr[28]; }
__device__ unsigned int getIndex29(unsigned int* arr) { return arr[29]; }


__device__ unsigned int getIndex30(unsigned int* arr) { return arr[30]; }
__device__ unsigned int getIndex31(unsigned int* arr) { return arr[31]; }
__device__ unsigned int getIndex32(unsigned int* arr) { return arr[32]; }
__device__ unsigned int getIndex33(unsigned int* arr) { return arr[33]; }
__device__ unsigned int getIndex34(unsigned int* arr) { return arr[34]; }
__device__ unsigned int getIndex35(unsigned int* arr) { return arr[35]; }
__device__ unsigned int getIndex36(unsigned int* arr) { return arr[36]; }
__device__ unsigned int getIndex37(unsigned int* arr) { return arr[37]; }
__device__ unsigned int getIndex38(unsigned int* arr) { return arr[38]; }
__device__ unsigned int getIndex39(unsigned int* arr) { return arr[39]; }


__device__ unsigned int getIndex40(unsigned int* arr) { return arr[40]; }
__device__ unsigned int getIndex41(unsigned int* arr) { return arr[41]; }
__device__ unsigned int getIndex42(unsigned int* arr) { return arr[42]; }
__device__ unsigned int getIndex43(unsigned int* arr) { return arr[43]; }
__device__ unsigned int getIndex44(unsigned int* arr) { return arr[44]; }
__device__ unsigned int getIndex45(unsigned int* arr) { return arr[45]; }
__device__ unsigned int getIndex46(unsigned int* arr) { return arr[46]; }
__device__ unsigned int getIndex47(unsigned int* arr) { return arr[47]; }
__device__ unsigned int getIndex48(unsigned int* arr) { return arr[48]; }
__device__ unsigned int getIndex49(unsigned int* arr) { return arr[49]; }

__device__ unsigned int getIndex50(unsigned int* arr) { return arr[50]; }
__device__ unsigned int getIndex51(unsigned int* arr) { return arr[51]; }
__device__ unsigned int getIndex52(unsigned int* arr) { return arr[52]; }
__device__ unsigned int getIndex53(unsigned int* arr) { return arr[53]; }
__device__ unsigned int getIndex54(unsigned int* arr) { return arr[54]; }
__device__ unsigned int getIndex55(unsigned int* arr) { return arr[55]; }
__device__ unsigned int getIndex56(unsigned int* arr) { return arr[56]; }
__device__ unsigned int getIndex57(unsigned int* arr) { return arr[57]; }
__device__ unsigned int getIndex58(unsigned int* arr) { return arr[58]; }
__device__ unsigned int getIndex59(unsigned int* arr) { return arr[59]; }


__device__ unsigned int getIndex60(unsigned int* arr) { return arr[60]; }
__device__ unsigned int getIndex61(unsigned int* arr) { return arr[61]; }
__device__ unsigned int getIndex62(unsigned int* arr) { return arr[62]; }
__device__ unsigned int getIndex63(unsigned int* arr) { return arr[63]; }
__device__ unsigned int getIndex64(unsigned int* arr) { return arr[64]; }
__device__ unsigned int getIndex65(unsigned int* arr) { return arr[65]; }
__device__ unsigned int getIndex66(unsigned int* arr) { return arr[66]; }
__device__ unsigned int getIndex67(unsigned int* arr) { return arr[67]; }
__device__ unsigned int getIndex68(unsigned int* arr) { return arr[68]; }
__device__ unsigned int getIndex69(unsigned int* arr) { return arr[69]; }


__device__ unsigned int getIndex70(unsigned int* arr) { return arr[70]; }
__device__ unsigned int getIndex71(unsigned int* arr) { return arr[71]; }
__device__ unsigned int getIndex72(unsigned int* arr) { return arr[72]; }
__device__ unsigned int getIndex73(unsigned int* arr) { return arr[73]; }
__device__ unsigned int getIndex74(unsigned int* arr) { return arr[74]; }
__device__ unsigned int getIndex75(unsigned int* arr) { return arr[75]; }
__device__ unsigned int getIndex76(unsigned int* arr) { return arr[76]; }
__device__ unsigned int getIndex77(unsigned int* arr) { return arr[77]; }
__device__ unsigned int getIndex78(unsigned int* arr) { return arr[78]; }
__device__ unsigned int getIndex79(unsigned int* arr) { return arr[79]; }

__device__ unsigned int getIndex80(unsigned int* arr) { return arr[80]; }
__device__ unsigned int getIndex81(unsigned int* arr) { return arr[81]; }
__device__ unsigned int getIndex82(unsigned int* arr) { return arr[82]; }
__device__ unsigned int getIndex83(unsigned int* arr) { return arr[83]; }
__device__ unsigned int getIndex84(unsigned int* arr) { return arr[84]; }
__device__ unsigned int getIndex85(unsigned int* arr) { return arr[85]; }
__device__ unsigned int getIndex86(unsigned int* arr) { return arr[86]; }
__device__ unsigned int getIndex87(unsigned int* arr) { return arr[87]; }
__device__ unsigned int getIndex88(unsigned int* arr) { return arr[88]; }
__device__ unsigned int getIndex89(unsigned int* arr) { return arr[89]; }

__device__ unsigned int getIndex90(unsigned int* arr) { return arr[90]; }
__device__ unsigned int getIndex91(unsigned int* arr) { return arr[91]; }
__device__ unsigned int getIndex92(unsigned int* arr) { return arr[92]; }
__device__ unsigned int getIndex93(unsigned int* arr) { return arr[93]; }
__device__ unsigned int getIndex94(unsigned int* arr) { return arr[94]; }
__device__ unsigned int getIndex95(unsigned int* arr) { return arr[95]; }
__device__ unsigned int getIndex96(unsigned int* arr) { return arr[96]; }
__device__ unsigned int getIndex97(unsigned int* arr) { return arr[97]; }
__device__ unsigned int getIndex98(unsigned int* arr) { return arr[98]; }
__device__ unsigned int getIndex99(unsigned int* arr) { return arr[99]; }

__device__ unsigned int getIndex100(unsigned int* arr) { return arr[100]; }
__device__ unsigned int getIndex101(unsigned int* arr) { return arr[101]; }
__device__ unsigned int getIndex102(unsigned int* arr) { return arr[102]; }
__device__ unsigned int getIndex103(unsigned int* arr) { return arr[103]; }
__device__ unsigned int getIndex104(unsigned int* arr) { return arr[104]; }
__device__ unsigned int getIndex105(unsigned int* arr) { return arr[105]; }
__device__ unsigned int getIndex106(unsigned int* arr) { return arr[106]; }
__device__ unsigned int getIndex107(unsigned int* arr) { return arr[107]; }
__device__ unsigned int getIndex108(unsigned int* arr) { return arr[108]; }
__device__ unsigned int getIndex109(unsigned int* arr) { return arr[109]; }

__device__ unsigned int getIndex110(unsigned int* arr) { return arr[110]; }
__device__ unsigned int getIndex111(unsigned int* arr) { return arr[111]; }
__device__ unsigned int getIndex112(unsigned int* arr) { return arr[112]; }
__device__ unsigned int getIndex113(unsigned int* arr) { return arr[113]; }
__device__ unsigned int getIndex114(unsigned int* arr) { return arr[114]; }
__device__ unsigned int getIndex115(unsigned int* arr) { return arr[115]; }
__device__ unsigned int getIndex116(unsigned int* arr) { return arr[116]; }
__device__ unsigned int getIndex117(unsigned int* arr) { return arr[117]; }
__device__ unsigned int getIndex118(unsigned int* arr) { return arr[118]; }
__device__ unsigned int getIndex119(unsigned int* arr) { return arr[119]; }


__device__ unsigned int getIndex120(unsigned int* arr) { return arr[120]; }
__device__ unsigned int getIndex121(unsigned int* arr) { return arr[121]; }
__device__ unsigned int getIndex122(unsigned int* arr) { return arr[122]; }
__device__ unsigned int getIndex123(unsigned int* arr) { return arr[123]; }
__device__ unsigned int getIndex124(unsigned int* arr) { return arr[124]; }
__device__ unsigned int getIndex125(unsigned int* arr) { return arr[125]; }
__device__ unsigned int getIndex126(unsigned int* arr) { return arr[126]; }
__device__ unsigned int getIndex127(unsigned int* arr) { return arr[127]; }
__device__ unsigned int getIndex128(unsigned int* arr) { return arr[128]; }
__device__ unsigned int getIndex129(unsigned int* arr) { return arr[129]; }

__device__ unsigned int getIndex130(unsigned int* arr) { return arr[130]; }
__device__ unsigned int getIndex131(unsigned int* arr) { return arr[131]; }
__device__ unsigned int getIndex132(unsigned int* arr) { return arr[132]; }
__device__ unsigned int getIndex133(unsigned int* arr) { return arr[133]; }
__device__ unsigned int getIndex134(unsigned int* arr) { return arr[134]; }
__device__ unsigned int getIndex135(unsigned int* arr) { return arr[135]; }
__device__ unsigned int getIndex136(unsigned int* arr) { return arr[136]; }
__device__ unsigned int getIndex137(unsigned int* arr) { return arr[137]; }
__device__ unsigned int getIndex138(unsigned int* arr) { return arr[138]; }
__device__ unsigned int getIndex139(unsigned int* arr) { return arr[139]; }

__device__ unsigned int getIndex140(unsigned int* arr) { return arr[140]; }
__device__ unsigned int getIndex141(unsigned int* arr) { return arr[141]; }
__device__ unsigned int getIndex142(unsigned int* arr) { return arr[142]; }
__device__ unsigned int getIndex143(unsigned int* arr) { return arr[143]; }
__device__ unsigned int getIndex144(unsigned int* arr) { return arr[144]; }
__device__ unsigned int getIndex145(unsigned int* arr) { return arr[145]; }
__device__ unsigned int getIndex146(unsigned int* arr) { return arr[146]; }
__device__ unsigned int getIndex147(unsigned int* arr) { return arr[147]; }
__device__ unsigned int getIndex148(unsigned int* arr) { return arr[148]; }
__device__ unsigned int getIndex149(unsigned int* arr) { return arr[149]; }

__device__ unsigned int getIndex150(unsigned int* arr) { return arr[150]; }
__device__ unsigned int getIndex151(unsigned int* arr) { return arr[151]; }
__device__ unsigned int getIndex152(unsigned int* arr) { return arr[152]; }
__device__ unsigned int getIndex153(unsigned int* arr) { return arr[153]; }
__device__ unsigned int getIndex154(unsigned int* arr) { return arr[154]; }
__device__ unsigned int getIndex155(unsigned int* arr) { return arr[155]; }
__device__ unsigned int getIndex156(unsigned int* arr) { return arr[156]; }
__device__ unsigned int getIndex157(unsigned int* arr) { return arr[157]; }
__device__ unsigned int getIndex158(unsigned int* arr) { return arr[158]; }
__device__ unsigned int getIndex159(unsigned int* arr) { return arr[159]; }

__device__ unsigned int getIndex160(unsigned int* arr) { return arr[160]; }
__device__ unsigned int getIndex161(unsigned int* arr) { return arr[161]; }
__device__ unsigned int getIndex162(unsigned int* arr) { return arr[162]; }
__device__ unsigned int getIndex163(unsigned int* arr) { return arr[163]; }
__device__ unsigned int getIndex164(unsigned int* arr) { return arr[164]; }
__device__ unsigned int getIndex165(unsigned int* arr) { return arr[165]; }
__device__ unsigned int getIndex166(unsigned int* arr) { return arr[166]; }
__device__ unsigned int getIndex167(unsigned int* arr) { return arr[167]; }
__device__ unsigned int getIndex168(unsigned int* arr) { return arr[168]; }
__device__ unsigned int getIndex169(unsigned int* arr) { return arr[169]; }

__device__ unsigned int getIndex170(unsigned int* arr) { return arr[170]; }
__device__ unsigned int getIndex171(unsigned int* arr) { return arr[171]; }
__device__ unsigned int getIndex172(unsigned int* arr) { return arr[172]; }
__device__ unsigned int getIndex173(unsigned int* arr) { return arr[173]; }
__device__ unsigned int getIndex174(unsigned int* arr) { return arr[174]; }
__device__ unsigned int getIndex175(unsigned int* arr) { return arr[175]; }
__device__ unsigned int getIndex176(unsigned int* arr) { return arr[176]; }
__device__ unsigned int getIndex177(unsigned int* arr) { return arr[177]; }
__device__ unsigned int getIndex178(unsigned int* arr) { return arr[178]; }
__device__ unsigned int getIndex179(unsigned int* arr) { return arr[179]; }

__device__ unsigned int getIndex180(unsigned int* arr) { return arr[180]; }
__device__ unsigned int getIndex181(unsigned int* arr) { return arr[181]; }
__device__ unsigned int getIndex182(unsigned int* arr) { return arr[182]; }
__device__ unsigned int getIndex183(unsigned int* arr) { return arr[183]; }
__device__ unsigned int getIndex184(unsigned int* arr) { return arr[184]; }
__device__ unsigned int getIndex185(unsigned int* arr) { return arr[185]; }
__device__ unsigned int getIndex186(unsigned int* arr) { return arr[186]; }
__device__ unsigned int getIndex187(unsigned int* arr) { return arr[187]; }
__device__ unsigned int getIndex188(unsigned int* arr) { return arr[188]; }
__device__ unsigned int getIndex189(unsigned int* arr) { return arr[189]; }

__device__ unsigned int getIndex190(unsigned int* arr) { return arr[190]; }
__device__ unsigned int getIndex191(unsigned int* arr) { return arr[191]; }
__device__ unsigned int getIndex192(unsigned int* arr) { return arr[192]; }
__device__ unsigned int getIndex193(unsigned int* arr) { return arr[193]; }
__device__ unsigned int getIndex194(unsigned int* arr) { return arr[194]; }
__device__ unsigned int getIndex195(unsigned int* arr) { return arr[195]; }
__device__ unsigned int getIndex196(unsigned int* arr) { return arr[196]; }
__device__ unsigned int getIndex197(unsigned int* arr) { return arr[197]; }
__device__ unsigned int getIndex198(unsigned int* arr) { return arr[198]; }
__device__ unsigned int getIndex199(unsigned int* arr) { return arr[199]; }


__device__ unsigned int getIndex200(unsigned int* arr) { return arr[200]; }
__device__ unsigned int getIndex201(unsigned int* arr) { return arr[201]; }
__device__ unsigned int getIndex202(unsigned int* arr) { return arr[202]; }
__device__ unsigned int getIndex203(unsigned int* arr) { return arr[203]; }
__device__ unsigned int getIndex204(unsigned int* arr) { return arr[204]; }
__device__ unsigned int getIndex205(unsigned int* arr) { return arr[205]; }
__device__ unsigned int getIndex206(unsigned int* arr) { return arr[206]; }
__device__ unsigned int getIndex207(unsigned int* arr) { return arr[207]; }
__device__ unsigned int getIndex208(unsigned int* arr) { return arr[208]; }
__device__ unsigned int getIndex209(unsigned int* arr) { return arr[209]; }

__device__ unsigned int getIndex210(unsigned int* arr) { return arr[210]; }
__device__ unsigned int getIndex211(unsigned int* arr) { return arr[211]; }
__device__ unsigned int getIndex212(unsigned int* arr) { return arr[212]; }
__device__ unsigned int getIndex213(unsigned int* arr) { return arr[213]; }
__device__ unsigned int getIndex214(unsigned int* arr) { return arr[214]; }
__device__ unsigned int getIndex215(unsigned int* arr) { return arr[215]; }
__device__ unsigned int getIndex216(unsigned int* arr) { return arr[216]; }
__device__ unsigned int getIndex217(unsigned int* arr) { return arr[217]; }
__device__ unsigned int getIndex218(unsigned int* arr) { return arr[218]; }
__device__ unsigned int getIndex219(unsigned int* arr) { return arr[219]; }

__device__ unsigned int getIndex220(unsigned int* arr) { return arr[220]; }
__device__ unsigned int getIndex221(unsigned int* arr) { return arr[221]; }
__device__ unsigned int getIndex222(unsigned int* arr) { return arr[222]; }
__device__ unsigned int getIndex223(unsigned int* arr) { return arr[223]; }
__device__ unsigned int getIndex224(unsigned int* arr) { return arr[224]; }
__device__ unsigned int getIndex225(unsigned int* arr) { return arr[225]; }
__device__ unsigned int getIndex226(unsigned int* arr) { return arr[226]; }
__device__ unsigned int getIndex227(unsigned int* arr) { return arr[227]; }
__device__ unsigned int getIndex228(unsigned int* arr) { return arr[228]; }
__device__ unsigned int getIndex229(unsigned int* arr) { return arr[229]; }

__device__ unsigned int getIndex230(unsigned int* arr) { return arr[230]; }
__device__ unsigned int getIndex231(unsigned int* arr) { return arr[231]; }
__device__ unsigned int getIndex232(unsigned int* arr) { return arr[232]; }
__device__ unsigned int getIndex233(unsigned int* arr) { return arr[233]; }
__device__ unsigned int getIndex234(unsigned int* arr) { return arr[234]; }
__device__ unsigned int getIndex235(unsigned int* arr) { return arr[235]; }
__device__ unsigned int getIndex236(unsigned int* arr) { return arr[236]; }
__device__ unsigned int getIndex237(unsigned int* arr) { return arr[237]; }
__device__ unsigned int getIndex238(unsigned int* arr) { return arr[238]; }
__device__ unsigned int getIndex239(unsigned int* arr) { return arr[239]; }

__device__ unsigned int getIndex240(unsigned int* arr) { return arr[240]; }
__device__ unsigned int getIndex241(unsigned int* arr) { return arr[241]; }
__device__ unsigned int getIndex242(unsigned int* arr) { return arr[242]; }
__device__ unsigned int getIndex243(unsigned int* arr) { return arr[243]; }
__device__ unsigned int getIndex244(unsigned int* arr) { return arr[244]; }
__device__ unsigned int getIndex245(unsigned int* arr) { return arr[245]; }
__device__ unsigned int getIndex246(unsigned int* arr) { return arr[246]; }
__device__ unsigned int getIndex247(unsigned int* arr) { return arr[247]; }
__device__ unsigned int getIndex248(unsigned int* arr) { return arr[248]; }
__device__ unsigned int getIndex249(unsigned int* arr) { return arr[249]; }

__device__ unsigned int getIndex250(unsigned int* arr) { return arr[250]; }
__device__ unsigned int getIndex251(unsigned int* arr) { return arr[251]; }
__device__ unsigned int getIndex252(unsigned int* arr) { return arr[252]; }
__device__ unsigned int getIndex253(unsigned int* arr) { return arr[253]; }
__device__ unsigned int getIndex254(unsigned int* arr) { return arr[254]; }
__device__ unsigned int getIndex255(unsigned int* arr) { return arr[255]; }


__device__ void setIndex0(unsigned int* arr, unsigned int data) { arr[0]=data; }
__device__ void setIndex1(unsigned int* arr, unsigned int data) { arr[1]=data; }
__device__ void setIndex2(unsigned int* arr, unsigned int data) { arr[2]=data; }
__device__ void setIndex3(unsigned int* arr, unsigned int data) { arr[3]=data; }
__device__ void setIndex4(unsigned int* arr, unsigned int data) { arr[4]=data; }
__device__ void setIndex5(unsigned int* arr, unsigned int data) { arr[5]=data; }
__device__ void setIndex6(unsigned int* arr, unsigned int data) { arr[6]=data; }
__device__ void setIndex7(unsigned int* arr, unsigned int data) { arr[7]=data; }
__device__ void setIndex8(unsigned int* arr, unsigned int data) { arr[8] = data; }
__device__ void setIndex9(unsigned int* arr, unsigned int data) { arr[9] = data; }

__device__ void setIndex10(unsigned int* arr, unsigned int data) { arr[10] = data; }
__device__ void setIndex11(unsigned int* arr, unsigned int data) { arr[11] = data; }
__device__ void setIndex12(unsigned int* arr, unsigned int data) { arr[12] = data; }
__device__ void setIndex13(unsigned int* arr, unsigned int data) { arr[13] = data; }
__device__ void setIndex14(unsigned int* arr, unsigned int data) { arr[14] = data; }
__device__ void setIndex15(unsigned int* arr, unsigned int data) { arr[15] = data; }
__device__ void setIndex16(unsigned int* arr, unsigned int data) { arr[16] = data; }
__device__ void setIndex17(unsigned int* arr, unsigned int data) { arr[17] = data; }
__device__ void setIndex18(unsigned int* arr, unsigned int data) { arr[18] = data; }
__device__ void setIndex19(unsigned int* arr, unsigned int data) { arr[19] = data; }

__device__ void setIndex20(unsigned int* arr, unsigned int data) { arr[20] = data; }
__device__ void setIndex21(unsigned int* arr, unsigned int data) { arr[21] = data; }
__device__ void setIndex22(unsigned int* arr, unsigned int data) { arr[22] = data; }
__device__ void setIndex23(unsigned int* arr, unsigned int data) { arr[23] = data; }
__device__ void setIndex24(unsigned int* arr, unsigned int data) { arr[24] = data; }
__device__ void setIndex25(unsigned int* arr, unsigned int data) { arr[25] = data; }
__device__ void setIndex26(unsigned int* arr, unsigned int data) { arr[26] = data; }
__device__ void setIndex27(unsigned int* arr, unsigned int data) { arr[27] = data; }
__device__ void setIndex28(unsigned int* arr, unsigned int data) { arr[28] = data; }
__device__ void setIndex29(unsigned int* arr, unsigned int data) { arr[29] = data; }

__device__ void setIndex30(unsigned int* arr, unsigned int data) { arr[30] = data; }
__device__ void setIndex31(unsigned int* arr, unsigned int data) { arr[31] = data; }
__device__ void setIndex32(unsigned int* arr, unsigned int data) { arr[32] = data; }
__device__ void setIndex33(unsigned int* arr, unsigned int data) { arr[33] = data; }
__device__ void setIndex34(unsigned int* arr, unsigned int data) { arr[34] = data; }
__device__ void setIndex35(unsigned int* arr, unsigned int data) { arr[35] = data; }
__device__ void setIndex36(unsigned int* arr, unsigned int data) { arr[36] = data; }
__device__ void setIndex37(unsigned int* arr, unsigned int data) { arr[37] = data; }
__device__ void setIndex38(unsigned int* arr, unsigned int data) { arr[38] = data; }
__device__ void setIndex39(unsigned int* arr, unsigned int data) { arr[39] = data; }

__device__ void setIndex40(unsigned int* arr, unsigned int data) { arr[40] = data; }
__device__ void setIndex41(unsigned int* arr, unsigned int data) { arr[41] = data; }
__device__ void setIndex42(unsigned int* arr, unsigned int data) { arr[42] = data; }
__device__ void setIndex43(unsigned int* arr, unsigned int data) { arr[43] = data; }
__device__ void setIndex44(unsigned int* arr, unsigned int data) { arr[44] = data; }
__device__ void setIndex45(unsigned int* arr, unsigned int data) { arr[45] = data; }
__device__ void setIndex46(unsigned int* arr, unsigned int data) { arr[46] = data; }
__device__ void setIndex47(unsigned int* arr, unsigned int data) { arr[47] = data; }
__device__ void setIndex48(unsigned int* arr, unsigned int data) { arr[48] = data; }
__device__ void setIndex49(unsigned int* arr, unsigned int data) { arr[49] = data; }

__device__ void setIndex50(unsigned int* arr, unsigned int data) { arr[50] = data; }
__device__ void setIndex51(unsigned int* arr, unsigned int data) { arr[51] = data; }
__device__ void setIndex52(unsigned int* arr, unsigned int data) { arr[52] = data; }
__device__ void setIndex53(unsigned int* arr, unsigned int data) { arr[53] = data; }
__device__ void setIndex54(unsigned int* arr, unsigned int data) { arr[54] = data; }
__device__ void setIndex55(unsigned int* arr, unsigned int data) { arr[55] = data; }
__device__ void setIndex56(unsigned int* arr, unsigned int data) { arr[56] = data; }
__device__ void setIndex57(unsigned int* arr, unsigned int data) { arr[57] = data; }
__device__ void setIndex58(unsigned int* arr, unsigned int data) { arr[58] = data; }
__device__ void setIndex59(unsigned int* arr, unsigned int data) { arr[59] = data; }

__device__ void setIndex60(unsigned int* arr, unsigned int data) { arr[60] = data; }
__device__ void setIndex61(unsigned int* arr, unsigned int data) { arr[61] = data; }
__device__ void setIndex62(unsigned int* arr, unsigned int data) { arr[62] = data; }
__device__ void setIndex63(unsigned int* arr, unsigned int data) { arr[63] = data; }
__device__ void setIndex64(unsigned int* arr, unsigned int data) { arr[64] = data; }
__device__ void setIndex65(unsigned int* arr, unsigned int data) { arr[65] = data; }
__device__ void setIndex66(unsigned int* arr, unsigned int data) { arr[66] = data; }
__device__ void setIndex67(unsigned int* arr, unsigned int data) { arr[67] = data; }
__device__ void setIndex68(unsigned int* arr, unsigned int data) { arr[68] = data; }
__device__ void setIndex69(unsigned int* arr, unsigned int data) { arr[69] = data; }

__device__ void setIndex70(unsigned int* arr, unsigned int data) { arr[70] = data; }
__device__ void setIndex71(unsigned int* arr, unsigned int data) { arr[71] = data; }
__device__ void setIndex72(unsigned int* arr, unsigned int data) { arr[72] = data; }
__device__ void setIndex73(unsigned int* arr, unsigned int data) { arr[73] = data; }
__device__ void setIndex74(unsigned int* arr, unsigned int data) { arr[74] = data; }
__device__ void setIndex75(unsigned int* arr, unsigned int data) { arr[75] = data; }
__device__ void setIndex76(unsigned int* arr, unsigned int data) { arr[76] = data; }
__device__ void setIndex77(unsigned int* arr, unsigned int data) { arr[77] = data; }
__device__ void setIndex78(unsigned int* arr, unsigned int data) { arr[78] = data; }
__device__ void setIndex79(unsigned int* arr, unsigned int data) { arr[79] = data; }

__device__ void setIndex80(unsigned int* arr, unsigned int data) { arr[80] = data; }
__device__ void setIndex81(unsigned int* arr, unsigned int data) { arr[81] = data; }
__device__ void setIndex82(unsigned int* arr, unsigned int data) { arr[82] = data; }
__device__ void setIndex83(unsigned int* arr, unsigned int data) { arr[83] = data; }
__device__ void setIndex84(unsigned int* arr, unsigned int data) { arr[84] = data; }
__device__ void setIndex85(unsigned int* arr, unsigned int data) { arr[85] = data; }
__device__ void setIndex86(unsigned int* arr, unsigned int data) { arr[86] = data; }
__device__ void setIndex87(unsigned int* arr, unsigned int data) { arr[87] = data; }
__device__ void setIndex88(unsigned int* arr, unsigned int data) { arr[88] = data; }
__device__ void setIndex89(unsigned int* arr, unsigned int data) { arr[89] = data; }

__device__ void setIndex90(unsigned int* arr, unsigned int data) { arr[90] = data; }
__device__ void setIndex91(unsigned int* arr, unsigned int data) { arr[91] = data; }
__device__ void setIndex92(unsigned int* arr, unsigned int data) { arr[92] = data; }
__device__ void setIndex93(unsigned int* arr, unsigned int data) { arr[93] = data; }
__device__ void setIndex94(unsigned int* arr, unsigned int data) { arr[94] = data; }
__device__ void setIndex95(unsigned int* arr, unsigned int data) { arr[95] = data; }
__device__ void setIndex96(unsigned int* arr, unsigned int data) { arr[96] = data; }
__device__ void setIndex97(unsigned int* arr, unsigned int data) { arr[97] = data; }
__device__ void setIndex98(unsigned int* arr, unsigned int data) { arr[98] = data; }
__device__ void setIndex99(unsigned int* arr, unsigned int data) { arr[99] = data; }

__device__ void setIndex100(unsigned int* arr, unsigned int data) { arr[100] = data; }
__device__ void setIndex101(unsigned int* arr, unsigned int data) { arr[101] = data; }
__device__ void setIndex102(unsigned int* arr, unsigned int data) { arr[102] = data; }
__device__ void setIndex103(unsigned int* arr, unsigned int data) { arr[103] = data; }
__device__ void setIndex104(unsigned int* arr, unsigned int data) { arr[104] = data; }
__device__ void setIndex105(unsigned int* arr, unsigned int data) { arr[105] = data; }
__device__ void setIndex106(unsigned int* arr, unsigned int data) { arr[106] = data; }
__device__ void setIndex107(unsigned int* arr, unsigned int data) { arr[107] = data; }
__device__ void setIndex108(unsigned int* arr, unsigned int data) { arr[108] = data; }
__device__ void setIndex109(unsigned int* arr, unsigned int data) { arr[109] = data; }

__device__ void setIndex110(unsigned int* arr, unsigned int data) { arr[110] = data; }
__device__ void setIndex111(unsigned int* arr, unsigned int data) { arr[111] = data; }
__device__ void setIndex112(unsigned int* arr, unsigned int data) { arr[112] = data; }
__device__ void setIndex113(unsigned int* arr, unsigned int data) { arr[113] = data; }
__device__ void setIndex114(unsigned int* arr, unsigned int data) { arr[114] = data; }
__device__ void setIndex115(unsigned int* arr, unsigned int data) { arr[115] = data; }
__device__ void setIndex116(unsigned int* arr, unsigned int data) { arr[116] = data; }
__device__ void setIndex117(unsigned int* arr, unsigned int data) { arr[117] = data; }
__device__ void setIndex118(unsigned int* arr, unsigned int data) { arr[118] = data; }
__device__ void setIndex119(unsigned int* arr, unsigned int data) { arr[119] = data; }

__device__ void setIndex120(unsigned int* arr, unsigned int data) { arr[120] = data; }
__device__ void setIndex121(unsigned int* arr, unsigned int data) { arr[121] = data; }
__device__ void setIndex122(unsigned int* arr, unsigned int data) { arr[122] = data; }
__device__ void setIndex123(unsigned int* arr, unsigned int data) { arr[123] = data; }
__device__ void setIndex124(unsigned int* arr, unsigned int data) { arr[124] = data; }
__device__ void setIndex125(unsigned int* arr, unsigned int data) { arr[125] = data; }
__device__ void setIndex126(unsigned int* arr, unsigned int data) { arr[126] = data; }
__device__ void setIndex127(unsigned int* arr, unsigned int data) { arr[127] = data; }
__device__ void setIndex128(unsigned int* arr, unsigned int data) { arr[128] = data; }
__device__ void setIndex129(unsigned int* arr, unsigned int data) { arr[129] = data; }

__device__ void setIndex130(unsigned int* arr, unsigned int data) { arr[130] = data; }
__device__ void setIndex131(unsigned int* arr, unsigned int data) { arr[131] = data; }
__device__ void setIndex132(unsigned int* arr, unsigned int data) { arr[132] = data; }
__device__ void setIndex133(unsigned int* arr, unsigned int data) { arr[133] = data; }
__device__ void setIndex134(unsigned int* arr, unsigned int data) { arr[134] = data; }
__device__ void setIndex135(unsigned int* arr, unsigned int data) { arr[135] = data; }
__device__ void setIndex136(unsigned int* arr, unsigned int data) { arr[136] = data; }
__device__ void setIndex137(unsigned int* arr, unsigned int data) { arr[137] = data; }
__device__ void setIndex138(unsigned int* arr, unsigned int data) { arr[138] = data; }
__device__ void setIndex139(unsigned int* arr, unsigned int data) { arr[139] = data; }

__device__ void setIndex140(unsigned int* arr, unsigned int data) { arr[140] = data; }
__device__ void setIndex141(unsigned int* arr, unsigned int data) { arr[141] = data; }
__device__ void setIndex142(unsigned int* arr, unsigned int data) { arr[142] = data; }
__device__ void setIndex143(unsigned int* arr, unsigned int data) { arr[143] = data; }
__device__ void setIndex144(unsigned int* arr, unsigned int data) { arr[144] = data; }
__device__ void setIndex145(unsigned int* arr, unsigned int data) { arr[145] = data; }
__device__ void setIndex146(unsigned int* arr, unsigned int data) { arr[146] = data; }
__device__ void setIndex147(unsigned int* arr, unsigned int data) { arr[147] = data; }
__device__ void setIndex148(unsigned int* arr, unsigned int data) { arr[148] = data; }
__device__ void setIndex149(unsigned int* arr, unsigned int data) { arr[149] = data; }


__device__ void setIndex150(unsigned int* arr, unsigned int data) { arr[150] = data; }
__device__ void setIndex151(unsigned int* arr, unsigned int data) { arr[151] = data; }
__device__ void setIndex152(unsigned int* arr, unsigned int data) { arr[152] = data; }
__device__ void setIndex153(unsigned int* arr, unsigned int data) { arr[153] = data; }
__device__ void setIndex154(unsigned int* arr, unsigned int data) { arr[154] = data; }
__device__ void setIndex155(unsigned int* arr, unsigned int data) { arr[155] = data; }
__device__ void setIndex156(unsigned int* arr, unsigned int data) { arr[156] = data; }
__device__ void setIndex157(unsigned int* arr, unsigned int data) { arr[157] = data; }
__device__ void setIndex158(unsigned int* arr, unsigned int data) { arr[158] = data; }
__device__ void setIndex159(unsigned int* arr, unsigned int data) { arr[159] = data; }


__device__ void setIndex160(unsigned int* arr, unsigned int data) { arr[160] = data; }
__device__ void setIndex161(unsigned int* arr, unsigned int data) { arr[161] = data; }
__device__ void setIndex162(unsigned int* arr, unsigned int data) { arr[162] = data; }
__device__ void setIndex163(unsigned int* arr, unsigned int data) { arr[163] = data; }
__device__ void setIndex164(unsigned int* arr, unsigned int data) { arr[164] = data; }
__device__ void setIndex165(unsigned int* arr, unsigned int data) { arr[165] = data; }
__device__ void setIndex166(unsigned int* arr, unsigned int data) { arr[166] = data; }
__device__ void setIndex167(unsigned int* arr, unsigned int data) { arr[167] = data; }
__device__ void setIndex168(unsigned int* arr, unsigned int data) { arr[168] = data; }
__device__ void setIndex169(unsigned int* arr, unsigned int data) { arr[169] = data; }

__device__ void setIndex170(unsigned int* arr, unsigned int data) { arr[170] = data; }
__device__ void setIndex171(unsigned int* arr, unsigned int data) { arr[171] = data; }
__device__ void setIndex172(unsigned int* arr, unsigned int data) { arr[172] = data; }
__device__ void setIndex173(unsigned int* arr, unsigned int data) { arr[173] = data; }
__device__ void setIndex174(unsigned int* arr, unsigned int data) { arr[174] = data; }
__device__ void setIndex175(unsigned int* arr, unsigned int data) { arr[175] = data; }
__device__ void setIndex176(unsigned int* arr, unsigned int data) { arr[176] = data; }
__device__ void setIndex177(unsigned int* arr, unsigned int data) { arr[177] = data; }
__device__ void setIndex178(unsigned int* arr, unsigned int data) { arr[178] = data; }
__device__ void setIndex179(unsigned int* arr, unsigned int data) { arr[179] = data; }

__device__ void setIndex180(unsigned int* arr, unsigned int data) { arr[180] = data; }
__device__ void setIndex181(unsigned int* arr, unsigned int data) { arr[181] = data; }
__device__ void setIndex182(unsigned int* arr, unsigned int data) { arr[182] = data; }
__device__ void setIndex183(unsigned int* arr, unsigned int data) { arr[183] = data; }
__device__ void setIndex184(unsigned int* arr, unsigned int data) { arr[184] = data; }
__device__ void setIndex185(unsigned int* arr, unsigned int data) { arr[185] = data; }
__device__ void setIndex186(unsigned int* arr, unsigned int data) { arr[186] = data; }
__device__ void setIndex187(unsigned int* arr, unsigned int data) { arr[187] = data; }
__device__ void setIndex188(unsigned int* arr, unsigned int data) { arr[188] = data; }
__device__ void setIndex189(unsigned int* arr, unsigned int data) { arr[189] = data; }

__device__ void setIndex190(unsigned int* arr, unsigned int data) { arr[190] = data; }
__device__ void setIndex191(unsigned int* arr, unsigned int data) { arr[191] = data; }
__device__ void setIndex192(unsigned int* arr, unsigned int data) { arr[192] = data; }
__device__ void setIndex193(unsigned int* arr, unsigned int data) { arr[193] = data; }
__device__ void setIndex194(unsigned int* arr, unsigned int data) { arr[194] = data; }
__device__ void setIndex195(unsigned int* arr, unsigned int data) { arr[195] = data; }
__device__ void setIndex196(unsigned int* arr, unsigned int data) { arr[196] = data; }
__device__ void setIndex197(unsigned int* arr, unsigned int data) { arr[197] = data; }
__device__ void setIndex198(unsigned int* arr, unsigned int data) { arr[198] = data; }
__device__ void setIndex199(unsigned int* arr, unsigned int data) { arr[199] = data; }

__device__ void setIndex200(unsigned int* arr, unsigned int data) { arr[200] = data; }
__device__ void setIndex201(unsigned int* arr, unsigned int data) { arr[201] = data; }
__device__ void setIndex202(unsigned int* arr, unsigned int data) { arr[202] = data; }
__device__ void setIndex203(unsigned int* arr, unsigned int data) { arr[203] = data; }
__device__ void setIndex204(unsigned int* arr, unsigned int data) { arr[204] = data; }
__device__ void setIndex205(unsigned int* arr, unsigned int data) { arr[205] = data; }
__device__ void setIndex206(unsigned int* arr, unsigned int data) { arr[206] = data; }
__device__ void setIndex207(unsigned int* arr, unsigned int data) { arr[207] = data; }
__device__ void setIndex208(unsigned int* arr, unsigned int data) { arr[208] = data; }
__device__ void setIndex209(unsigned int* arr, unsigned int data) { arr[209] = data; }

__device__ void setIndex210(unsigned int* arr, unsigned int data) { arr[210] = data; }
__device__ void setIndex211(unsigned int* arr, unsigned int data) { arr[211] = data; }
__device__ void setIndex212(unsigned int* arr, unsigned int data) { arr[212] = data; }
__device__ void setIndex213(unsigned int* arr, unsigned int data) { arr[213] = data; }
__device__ void setIndex214(unsigned int* arr, unsigned int data) { arr[214] = data; }
__device__ void setIndex215(unsigned int* arr, unsigned int data) { arr[215] = data; }
__device__ void setIndex216(unsigned int* arr, unsigned int data) { arr[216] = data; }
__device__ void setIndex217(unsigned int* arr, unsigned int data) { arr[217] = data; }
__device__ void setIndex218(unsigned int* arr, unsigned int data) { arr[218] = data; }
__device__ void setIndex219(unsigned int* arr, unsigned int data) { arr[219] = data; }

__device__ void setIndex220(unsigned int* arr, unsigned int data) { arr[220] = data; }
__device__ void setIndex221(unsigned int* arr, unsigned int data) { arr[221] = data; }
__device__ void setIndex222(unsigned int* arr, unsigned int data) { arr[222] = data; }
__device__ void setIndex223(unsigned int* arr, unsigned int data) { arr[223] = data; }
__device__ void setIndex224(unsigned int* arr, unsigned int data) { arr[224] = data; }
__device__ void setIndex225(unsigned int* arr, unsigned int data) { arr[225] = data; }
__device__ void setIndex226(unsigned int* arr, unsigned int data) { arr[226] = data; }
__device__ void setIndex227(unsigned int* arr, unsigned int data) { arr[227] = data; }
__device__ void setIndex228(unsigned int* arr, unsigned int data) { arr[228] = data; }
__device__ void setIndex229(unsigned int* arr, unsigned int data) { arr[229] = data; }

__device__ void setIndex230(unsigned int* arr, unsigned int data) { arr[230] = data; }
__device__ void setIndex231(unsigned int* arr, unsigned int data) { arr[231] = data; }
__device__ void setIndex232(unsigned int* arr, unsigned int data) { arr[232] = data; }
__device__ void setIndex233(unsigned int* arr, unsigned int data) { arr[233] = data; }
__device__ void setIndex234(unsigned int* arr, unsigned int data) { arr[234] = data; }
__device__ void setIndex235(unsigned int* arr, unsigned int data) { arr[235] = data; }
__device__ void setIndex236(unsigned int* arr, unsigned int data) { arr[236] = data; }
__device__ void setIndex237(unsigned int* arr, unsigned int data) { arr[237] = data; }
__device__ void setIndex238(unsigned int* arr, unsigned int data) { arr[238] = data; }
__device__ void setIndex239(unsigned int* arr, unsigned int data) { arr[239] = data; }

__device__ void setIndex240(unsigned int* arr, unsigned int data) { arr[240] = data; }
__device__ void setIndex241(unsigned int* arr, unsigned int data) { arr[241] = data; }
__device__ void setIndex242(unsigned int* arr, unsigned int data) { arr[242] = data; }
__device__ void setIndex243(unsigned int* arr, unsigned int data) { arr[243] = data; }
__device__ void setIndex244(unsigned int* arr, unsigned int data) { arr[244] = data; }
__device__ void setIndex245(unsigned int* arr, unsigned int data) { arr[245] = data; }
__device__ void setIndex246(unsigned int* arr, unsigned int data) { arr[246] = data; }
__device__ void setIndex247(unsigned int* arr, unsigned int data) { arr[247] = data; }
__device__ void setIndex248(unsigned int* arr, unsigned int data) { arr[248] = data; }
__device__ void setIndex249(unsigned int* arr, unsigned int data) { arr[249] = data; }

__device__ void setIndex250(unsigned int* arr, unsigned int data) { arr[250] = data; }
__device__ void setIndex251(unsigned int* arr, unsigned int data) { arr[251] = data; }
__device__ void setIndex252(unsigned int* arr, unsigned int data) { arr[252] = data; }
__device__ void setIndex253(unsigned int* arr, unsigned int data) { arr[253] = data; }
__device__ void setIndex254(unsigned int* arr, unsigned int data) { arr[254] = data; }
__device__ void setIndex255(unsigned int* arr, unsigned int data) { arr[255] = data; }


typedef unsigned int (*funcGet) (unsigned int*);
typedef void (*funcSet) (unsigned int*,unsigned int);
__device__ funcGet fuGet[256] = { 
    &getIndex0,&getIndex1,&getIndex2,&getIndex3,&getIndex4,&getIndex5,&getIndex6,&getIndex7,&getIndex8,&getIndex9,
    &getIndex10,&getIndex11,&getIndex12,&getIndex13,&getIndex14,&getIndex15,&getIndex16,&getIndex17,&getIndex18,&getIndex19,
    &getIndex20,&getIndex21,&getIndex22,&getIndex23,&getIndex24,&getIndex25,&getIndex26,&getIndex27,&getIndex28,&getIndex29,
    & getIndex30,& getIndex31,& getIndex32,& getIndex33,& getIndex34,& getIndex35,& getIndex36,& getIndex37,& getIndex38,& getIndex39,
    & getIndex40,& getIndex41,& getIndex42,& getIndex43,& getIndex44,& getIndex45,& getIndex46,& getIndex47,& getIndex48,& getIndex49,
    & getIndex50,& getIndex51,& getIndex52,& getIndex53,& getIndex54,& getIndex55,& getIndex56,& getIndex57,& getIndex58,& getIndex59,
    & getIndex60,& getIndex61,& getIndex62,& getIndex63,& getIndex64,& getIndex65,& getIndex66,& getIndex67,& getIndex68,& getIndex69,
    & getIndex70,& getIndex71,& getIndex72,& getIndex73,& getIndex74,& getIndex75,& getIndex76,& getIndex77,& getIndex78,& getIndex79,
    & getIndex80,& getIndex81,& getIndex82,& getIndex83,& getIndex84,& getIndex85,& getIndex86,& getIndex87,& getIndex88,& getIndex89,
    & getIndex90,& getIndex91,& getIndex92,& getIndex93,& getIndex94,& getIndex95,& getIndex96,& getIndex97,& getIndex98,& getIndex99,

    & getIndex100,& getIndex101,& getIndex102,& getIndex103,& getIndex104,& getIndex105,& getIndex106,& getIndex107,& getIndex108,& getIndex109,
    & getIndex110,& getIndex111,& getIndex112,& getIndex113,& getIndex114,& getIndex115,& getIndex116,& getIndex117,& getIndex118,& getIndex119,
    & getIndex120,& getIndex121,& getIndex122,& getIndex123,& getIndex124,& getIndex125,& getIndex126,& getIndex127,& getIndex128,& getIndex129,
    & getIndex130,& getIndex131,& getIndex132,& getIndex133,& getIndex134,& getIndex135,& getIndex136,& getIndex137,& getIndex138,& getIndex139,
    & getIndex140,& getIndex141,& getIndex142,& getIndex143,& getIndex144,& getIndex145,& getIndex146,& getIndex147,& getIndex148,& getIndex149,
    & getIndex150,& getIndex151,& getIndex152,& getIndex153,& getIndex154,& getIndex155,& getIndex156,& getIndex157,& getIndex158,& getIndex159,
    & getIndex160,& getIndex161,& getIndex162,& getIndex163,& getIndex164,& getIndex165,& getIndex166,& getIndex167,& getIndex168,& getIndex169,
    & getIndex170,& getIndex171,& getIndex172,& getIndex173,& getIndex174,& getIndex175,& getIndex176,& getIndex177,& getIndex178,& getIndex179,
    & getIndex180,& getIndex181,& getIndex182,& getIndex183,& getIndex184,& getIndex185,& getIndex186,& getIndex187,& getIndex188,& getIndex189,
    & getIndex190,& getIndex191,& getIndex192,& getIndex193,& getIndex194,& getIndex195,& getIndex196,& getIndex197,& getIndex198,& getIndex199,

    & getIndex200,& getIndex201,& getIndex202,& getIndex203,& getIndex204,& getIndex205,& getIndex206,& getIndex207,& getIndex208,& getIndex209,
    & getIndex200,& getIndex211,& getIndex212,& getIndex213,& getIndex214,& getIndex215,& getIndex216,& getIndex217,& getIndex218,& getIndex219,
    & getIndex200,& getIndex221,& getIndex222,& getIndex223,& getIndex224,& getIndex225,& getIndex226,& getIndex227,& getIndex228,& getIndex229,
    & getIndex200,& getIndex231,& getIndex232,& getIndex233,& getIndex234,& getIndex235,& getIndex236,& getIndex237,& getIndex238,& getIndex239,
    & getIndex200,& getIndex241,& getIndex242,& getIndex243,& getIndex244,& getIndex245,& getIndex246,& getIndex247,& getIndex248,& getIndex249,
    & getIndex200,& getIndex251,& getIndex252,& getIndex253,& getIndex254,& getIndex255
};
__device__ funcSet fuSet[256] = { 
    &setIndex0,&setIndex1,&setIndex2,&setIndex3,&setIndex4,&setIndex5,&setIndex6,&setIndex7,&setIndex8,&setIndex9,
    &setIndex10,&setIndex11,&setIndex12,&setIndex13,&setIndex14,&setIndex15,&setIndex16,&setIndex17,&setIndex18,&setIndex19,
    &setIndex20,&setIndex21,&setIndex22,&setIndex23,&setIndex24,&setIndex25,&setIndex26,&setIndex27,&setIndex28,&setIndex29,
    & setIndex30,& setIndex31,& setIndex32,& setIndex33,& setIndex34,& setIndex35,& setIndex36,& setIndex37,& setIndex38,& setIndex39,
    & setIndex40,& setIndex41,& setIndex42,& setIndex43,& setIndex44,& setIndex45,& setIndex46,& setIndex47,& setIndex48,& setIndex49,
    & setIndex50,& setIndex51,& setIndex52,& setIndex53,& setIndex54,& setIndex55,& setIndex56,& setIndex57,& setIndex58,& setIndex59,
    & setIndex60,& setIndex61,& setIndex62,& setIndex63,& setIndex64,& setIndex65,& setIndex66,& setIndex67,& setIndex68,& setIndex69,
    & setIndex70,& setIndex71,& setIndex72,& setIndex73,& setIndex74,& setIndex75,& setIndex76,& setIndex77,& setIndex78,& setIndex79,
    & setIndex80,& setIndex81,& setIndex82,& setIndex83,& setIndex84,& setIndex85,& setIndex86,& setIndex87,& setIndex88,& setIndex89,
    & setIndex90,& setIndex91,& setIndex92,& setIndex93,& setIndex94,& setIndex95,& setIndex96,& setIndex97,& setIndex98,& setIndex99,

    & setIndex100,& setIndex101,& setIndex102,& setIndex103,& setIndex104,& setIndex105,& setIndex106,& setIndex107,& setIndex108,& setIndex109,
    & setIndex110,& setIndex111,& setIndex112,& setIndex113,& setIndex114,& setIndex115,& setIndex116,& setIndex117,& setIndex118,& setIndex119,
    & setIndex120,& setIndex121,& setIndex122,& setIndex123,& setIndex124,& setIndex125,& setIndex126,& setIndex127,& setIndex128,& setIndex129,
    & setIndex130,& setIndex131,& setIndex132,& setIndex133,& setIndex134,& setIndex135,& setIndex136,& setIndex137,& setIndex138,& setIndex139,
    & setIndex140,& setIndex141,& setIndex142,& setIndex143,& setIndex144,& setIndex145,& setIndex146,& setIndex147,& setIndex148,& setIndex149,
    & setIndex150,& setIndex151,& setIndex152,& setIndex153,& setIndex154,& setIndex155,& setIndex156,& setIndex157,& setIndex158,& setIndex159,
    & setIndex160,& setIndex161,& setIndex162,& setIndex163,& setIndex164,& setIndex165,& setIndex166,& setIndex167,& setIndex168,& setIndex169,
    & setIndex170,& setIndex171,& setIndex172,& setIndex173,& setIndex174,& setIndex175,& setIndex176,& setIndex177,& setIndex178,& setIndex179,
    & setIndex180,& setIndex181,& setIndex182,& setIndex183,& setIndex184,& setIndex185,& setIndex186,& setIndex187,& setIndex188,& setIndex189,
    & setIndex190,& setIndex191,& setIndex192,& setIndex193,& setIndex194,& setIndex195,& setIndex196,& setIndex197,& setIndex198,& setIndex199,

    & setIndex200,& setIndex201,& setIndex202,& setIndex203,& setIndex204,& setIndex205,& setIndex206,& setIndex207,& setIndex208,& setIndex209,
    & setIndex210,& setIndex211,& setIndex212,& setIndex213,& setIndex214,& setIndex215,& setIndex216,& setIndex217,& setIndex218,& setIndex219,
    & setIndex220,& setIndex221,& setIndex222,& setIndex223,& setIndex224,& setIndex225,& setIndex226,& setIndex227,& setIndex228,& setIndex229,
    & setIndex230,& setIndex231,& setIndex232,& setIndex233,& setIndex234,& setIndex235,& setIndex236,& setIndex237,& setIndex238,& setIndex239,
    & setIndex240,& setIndex241,& setIndex242,& setIndex243,& setIndex244,& setIndex245,& setIndex246,& setIndex247,& setIndex248,& setIndex249,
    & setIndex250,& setIndex251,& setIndex252,& setIndex253,& setIndex254,& setIndex255
};

template<int ArraySize>
struct WarpRegisterArray
{
private:
    unsigned int mem[(1 + (ArraySize - 1) / 32)];

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
            result = fuGet[column](mem);
           
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
            fuSet[column](mem,dataReceived);
       
        }
    }
};


__global__ void dynamicRegisterIndexing(int* result, int start, int stop)
{
    WarpRegisterArray<8160> arr;
    for (int j = 0; j < 100; j++)
    {
        int sum = 0;

        for (int i = start; i < stop; i++)
            arr.set(1, i);

        for (int i = start; i < stop; i++)
        {
            auto data = arr.get(i);
            sum += data;
        }

        if (threadIdx.x == 0)
            result[0] += sum;
    }
}


int main()
{
 
    int* data;
    cudaMallocManaged(&data, sizeof(int));
    int start, stop;
    std::cin >> start;
    std::cin >> stop;
    *data = 0;
    for (int i = 0; i < 10; i++)
    {
        dynamicRegisterIndexing <<<1, 32 >>> (data, start, stop);
        cudaDeviceSynchronize();
    }
    std::cout << "sum  = " << *data << std::endl;
    cudaFree(data);
    return 0;
}
