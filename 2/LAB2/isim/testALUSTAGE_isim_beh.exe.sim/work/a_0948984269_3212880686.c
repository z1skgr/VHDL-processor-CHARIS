/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB2/shiftOps.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0948984269_3212880686_p_0(char *t0)
{
    char t21[16];
    char t23[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t22;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5392);
    t4 = 1;
    if (4U == 4U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5396);
    t4 = 1;
    if (4U == 4U)
        goto LAB15;

LAB16:    t4 = 0;

LAB17:    if (t4 != 0)
        goto LAB13;

LAB14:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5400);
    t4 = 1;
    if (4U == 4U)
        goto LAB25;

LAB26:    t4 = 0;

LAB27:    if (t4 != 0)
        goto LAB23;

LAB24:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5404);
    t4 = 1;
    if (4U == 4U)
        goto LAB35;

LAB36:    t4 = 0;

LAB37:    if (t4 != 0)
        goto LAB33;

LAB34:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5408);
    t4 = 1;
    if (4U == 4U)
        goto LAB45;

LAB46:    t4 = 0;

LAB47:    if (t4 != 0)
        goto LAB43;

LAB44:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 5412);
    t3 = (t0 + 3336);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t3);

LAB3:    t1 = (t0 + 3240);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t10 = (31 - 31);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = (t0 + 1032U);
    t16 = *((char **)t15);
    t17 = (31 - 31);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t15 = (t16 + t19);
    t22 = ((IEEE_P_2592010699) + 4024);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 31;
    t25 = (t24 + 4U);
    *((int *)t25) = 1;
    t25 = (t24 + 8U);
    *((int *)t25) = -1;
    t26 = (1 - 31);
    t27 = (t26 * -1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t20 = xsi_base_array_concat(t20, t21, t22, (char)99, t14, (char)97, t15, t23, (char)101);
    t27 = (1U + 31U);
    t28 = (32U != t27);
    if (t28 == 1)
        goto LAB11;

LAB12:    t25 = (t0 + 3336);
    t29 = (t25 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t20, 32U);
    xsi_driver_first_trans_fast(t25);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 4U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_size_not_matching(32U, t27, 0);
    goto LAB12;

LAB13:    xsi_set_current_line(46, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t11 = (31 - 31);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t16 = ((IEEE_P_2592010699) + 4024);
    t20 = (t23 + 0U);
    t22 = (t20 + 0U);
    *((int *)t22) = 31;
    t22 = (t20 + 4U);
    *((int *)t22) = 1;
    t22 = (t20 + 8U);
    *((int *)t22) = -1;
    t10 = (1 - 31);
    t17 = (t10 * -1);
    t17 = (t17 + 1);
    t22 = (t20 + 12U);
    *((unsigned int *)t22) = t17;
    t15 = xsi_base_array_concat(t15, t21, t16, (char)99, (unsigned char)2, (char)97, t8, t23, (char)101);
    t17 = (1U + 31U);
    t14 = (32U != t17);
    if (t14 == 1)
        goto LAB21;

LAB22:    t22 = (t0 + 3336);
    t24 = (t22 + 56U);
    t25 = *((char **)t24);
    t29 = (t25 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t15, 32U);
    xsi_driver_first_trans_fast(t22);
    goto LAB3;

LAB15:    t5 = 0;

LAB18:    if (t5 < 4U)
        goto LAB19;
    else
        goto LAB17;

LAB19:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB16;

LAB20:    t5 = (t5 + 1);
    goto LAB18;

LAB21:    xsi_size_not_matching(32U, t17, 0);
    goto LAB22;

LAB23:    xsi_set_current_line(48, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t11 = (31 - 30);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t16 = ((IEEE_P_2592010699) + 4024);
    t20 = (t23 + 0U);
    t22 = (t20 + 0U);
    *((int *)t22) = 30;
    t22 = (t20 + 4U);
    *((int *)t22) = 0;
    t22 = (t20 + 8U);
    *((int *)t22) = -1;
    t10 = (0 - 30);
    t17 = (t10 * -1);
    t17 = (t17 + 1);
    t22 = (t20 + 12U);
    *((unsigned int *)t22) = t17;
    t15 = xsi_base_array_concat(t15, t21, t16, (char)97, t8, t23, (char)99, (unsigned char)2, (char)101);
    t17 = (31U + 1U);
    t14 = (32U != t17);
    if (t14 == 1)
        goto LAB31;

LAB32:    t22 = (t0 + 3336);
    t24 = (t22 + 56U);
    t25 = *((char **)t24);
    t29 = (t25 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t15, 32U);
    xsi_driver_first_trans_fast(t22);
    goto LAB3;

LAB25:    t5 = 0;

LAB28:    if (t5 < 4U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB26;

LAB30:    t5 = (t5 + 1);
    goto LAB28;

LAB31:    xsi_size_not_matching(32U, t17, 0);
    goto LAB32;

LAB33:    xsi_set_current_line(50, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t11 = (31 - 30);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t15 = (t0 + 1032U);
    t16 = *((char **)t15);
    t10 = (31 - 31);
    t17 = (t10 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t15 = (t16 + t19);
    t14 = *((unsigned char *)t15);
    t22 = ((IEEE_P_2592010699) + 4024);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 30;
    t25 = (t24 + 4U);
    *((int *)t25) = 0;
    t25 = (t24 + 8U);
    *((int *)t25) = -1;
    t26 = (0 - 30);
    t27 = (t26 * -1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t20 = xsi_base_array_concat(t20, t21, t22, (char)97, t8, t23, (char)99, t14, (char)101);
    t27 = (31U + 1U);
    t28 = (32U != t27);
    if (t28 == 1)
        goto LAB41;

LAB42:    t25 = (t0 + 3336);
    t29 = (t25 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t20, 32U);
    xsi_driver_first_trans_fast(t25);
    goto LAB3;

LAB35:    t5 = 0;

LAB38:    if (t5 < 4U)
        goto LAB39;
    else
        goto LAB37;

LAB39:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB36;

LAB40:    t5 = (t5 + 1);
    goto LAB38;

LAB41:    xsi_size_not_matching(32U, t27, 0);
    goto LAB42;

LAB43:    xsi_set_current_line(52, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t10 = (0 - 31);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = (t0 + 1032U);
    t16 = *((char **)t15);
    t17 = (31 - 31);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t15 = (t16 + t19);
    t22 = ((IEEE_P_2592010699) + 4024);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 31;
    t25 = (t24 + 4U);
    *((int *)t25) = 1;
    t25 = (t24 + 8U);
    *((int *)t25) = -1;
    t26 = (1 - 31);
    t27 = (t26 * -1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t20 = xsi_base_array_concat(t20, t21, t22, (char)99, t14, (char)97, t15, t23, (char)101);
    t27 = (1U + 31U);
    t28 = (32U != t27);
    if (t28 == 1)
        goto LAB51;

LAB52:    t25 = (t0 + 3336);
    t29 = (t25 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t20, 32U);
    xsi_driver_first_trans_fast(t25);
    goto LAB3;

LAB45:    t5 = 0;

LAB48:    if (t5 < 4U)
        goto LAB49;
    else
        goto LAB47;

LAB49:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB46;

LAB50:    t5 = (t5 + 1);
    goto LAB48;

LAB51:    xsi_size_not_matching(32U, t27, 0);
    goto LAB52;

}

static void work_a_0948984269_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(57, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 3400);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3256);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0948984269_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0948984269_3212880686_p_0,(void *)work_a_0948984269_3212880686_p_1};
	xsi_register_didat("work_a_0948984269_3212880686", "isim/testALUSTAGE_isim_beh.exe.sim/work/a_0948984269_3212880686.didat");
	xsi_register_executes(pe);
}
