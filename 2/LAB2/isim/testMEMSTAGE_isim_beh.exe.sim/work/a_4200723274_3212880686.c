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
static const char *ng0 = "C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB2/MEMSTAGE.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_4200723274_3212880686_p_0(char *t0)
{
    char t12[16];
    char t16[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    int t17;
    unsigned int t18;
    int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 992U);
    t5 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t6 = (t0 + 1512U);
    t7 = *((char **)t6);
    t6 = (t0 + 3392);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 32U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t13 = (31 - 12);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t1 = (t2 + t15);
    t6 = (t16 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 12;
    t7 = (t6 + 4U);
    *((int *)t7) = 2;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t17 = (2 - 12);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t18;
    t7 = (t0 + 5574);
    t9 = (t19 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 10;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t20 = (10 - 0);
    t18 = (t20 * 1);
    t18 = (t18 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t18;
    t10 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t12, t1, t16, t7, t19);
    t11 = (t12 + 12U);
    t18 = *((unsigned int *)t11);
    t21 = (1U * t18);
    t3 = (11U != t21);
    if (t3 == 1)
        goto LAB8;

LAB9:    t22 = (t0 + 3456);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t10, 11U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB6;

LAB8:    xsi_size_not_matching(11U, t21, 0);
    goto LAB9;

}


extern void work_a_4200723274_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4200723274_3212880686_p_0};
	xsi_register_didat("work_a_4200723274_3212880686", "isim/testMEMSTAGE_isim_beh.exe.sim/work/a_4200723274_3212880686.didat");
	xsi_register_executes(pe);
}
