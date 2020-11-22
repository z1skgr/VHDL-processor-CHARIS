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
static const char *ng0 = "C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB4/ALU_Control.vhd";



static void work_a_3044219816_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    int t19;
    char *t20;
    char *t21;
    unsigned char t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4737);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB10:    t5 = (t0 + 4740);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB11:    t8 = (t0 + 4743);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB12:    t11 = (t0 + 4746);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB13:    t14 = (t0 + 4749);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB14:    t17 = (t0 + 4752);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB8;

LAB15:
LAB9:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 4805);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(45, ng0);
    t20 = (t0 + 1032U);
    t21 = *((char **)t20);
    t20 = (t0 + 4755);
    t23 = 1;
    if (6U == 6U)
        goto LAB20;

LAB21:    t23 = 0;

LAB22:    if (t23 != 0)
        goto LAB17;

LAB19:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4765);
    t23 = 1;
    if (6U == 6U)
        goto LAB28;

LAB29:    t23 = 0;

LAB30:    if (t23 != 0)
        goto LAB26;

LAB27:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4775);
    t23 = 1;
    if (6U == 6U)
        goto LAB36;

LAB37:    t23 = 0;

LAB38:    if (t23 != 0)
        goto LAB34;

LAB35:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t24 = (5 - 3);
    t34 = (t24 * 1U);
    t35 = (0 + t34);
    t1 = (t2 + t35);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB18:    goto LAB2;

LAB4:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4785);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 4789);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB6:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 4793);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB7:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4797);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB8:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4801);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB16:;
LAB17:    xsi_set_current_line(46, ng0);
    t27 = (t0 + 4761);
    t29 = (t0 + 2912);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t27, 4U);
    xsi_driver_first_trans_fast_port(t29);
    goto LAB18;

LAB20:    t24 = 0;

LAB23:    if (t24 < 6U)
        goto LAB24;
    else
        goto LAB22;

LAB24:    t25 = (t21 + t24);
    t26 = (t20 + t24);
    if (*((unsigned char *)t25) != *((unsigned char *)t26))
        goto LAB21;

LAB25:    t24 = (t24 + 1);
    goto LAB23;

LAB26:    xsi_set_current_line(48, ng0);
    t8 = (t0 + 4771);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB18;

LAB28:    t24 = 0;

LAB31:    if (t24 < 6U)
        goto LAB32;
    else
        goto LAB30;

LAB32:    t5 = (t2 + t24);
    t6 = (t1 + t24);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB29;

LAB33:    t24 = (t24 + 1);
    goto LAB31;

LAB34:    xsi_set_current_line(50, ng0);
    t8 = (t0 + 4781);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB18;

LAB36:    t24 = 0;

LAB39:    if (t24 < 6U)
        goto LAB40;
    else
        goto LAB38;

LAB40:    t5 = (t2 + t24);
    t6 = (t1 + t24);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB37;

LAB41:    t24 = (t24 + 1);
    goto LAB39;

}


extern void work_a_3044219816_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3044219816_3212880686_p_0};
	xsi_register_didat("work_a_3044219816_3212880686", "isim/testPROCESSOR_isim_beh.exe.sim/work/a_3044219816_3212880686.didat");
	xsi_register_executes(pe);
}
