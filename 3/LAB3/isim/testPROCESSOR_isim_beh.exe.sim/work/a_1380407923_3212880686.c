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
static const char *ng0 = "C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB3/arOps.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_853553178_503743352(char *, unsigned char , unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1380407923_3212880686_p_0(char *t0)
{
    char t5[16];
    char t11[16];
    char t28[16];
    char t34[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t29;
    char *t30;
    int t31;
    unsigned int t32;
    unsigned char t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 8656U);
    t3 = (t0 + 8864);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (3 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t24 = (t0 + 1352U);
    t25 = *((char **)t24);
    t24 = (t0 + 8656U);
    t26 = (t0 + 8868);
    t29 = (t28 + 0U);
    t30 = (t29 + 0U);
    *((int *)t30) = 0;
    t30 = (t29 + 4U);
    *((int *)t30) = 3;
    t30 = (t29 + 8U);
    *((int *)t30) = 1;
    t31 = (3 - 0);
    t32 = (t31 * 1);
    t32 = (t32 + 1);
    t30 = (t29 + 12U);
    *((unsigned int *)t30) = t32;
    t33 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t25, t24, t26, t28);
    if (t33 != 0)
        goto LAB7;

LAB8:
LAB11:    t47 = (t0 + 8872);
    t49 = (t0 + 5512);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    memcpy(t53, t47, 32U);
    xsi_driver_first_trans_fast(t49);

LAB2:    t54 = (t0 + 5352);
    *((int *)t54) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1032U);
    t12 = *((char **)t7);
    t7 = (t0 + 8624U);
    t13 = (t0 + 1192U);
    t14 = *((char **)t13);
    t13 = (t0 + 8640U);
    t15 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t11, t12, t7, t14, t13);
    t16 = (t11 + 12U);
    t9 = *((unsigned int *)t16);
    t17 = (1U * t9);
    t18 = (32U != t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    t19 = (t0 + 5512);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t15, 32U);
    xsi_driver_first_trans_fast(t19);
    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t17, 0);
    goto LAB6;

LAB7:    t30 = (t0 + 1032U);
    t35 = *((char **)t30);
    t30 = (t0 + 8624U);
    t36 = (t0 + 1192U);
    t37 = *((char **)t36);
    t36 = (t0 + 8640U);
    t38 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t34, t35, t30, t37, t36);
    t39 = (t34 + 12U);
    t32 = *((unsigned int *)t39);
    t40 = (1U * t32);
    t41 = (32U != t40);
    if (t41 == 1)
        goto LAB9;

LAB10:    t42 = (t0 + 5512);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t38, 32U);
    xsi_driver_first_trans_fast(t42);
    goto LAB2;

LAB9:    xsi_size_not_matching(32U, t40, 0);
    goto LAB10;

LAB12:    goto LAB2;

}

static void work_a_1380407923_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(56, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5576);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5368);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1380407923_3212880686_p_2(char *t0)
{
    char t7[16];
    char t15[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned char t31;
    unsigned char t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;

LAB0:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 5640);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 8656U);
    t3 = (t0 + 8904);
    t5 = (t7 + 0U);
    t8 = (t5 + 0U);
    *((int *)t8) = 0;
    t8 = (t5 + 4U);
    *((int *)t8) = 3;
    t8 = (t5 + 8U);
    *((int *)t8) = 1;
    t9 = (3 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t5 + 12U);
    *((unsigned int *)t8) = t10;
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t7);
    if (t11 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 1352U);
    t12 = *((char **)t8);
    t8 = (t0 + 8656U);
    t13 = (t0 + 8908);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 3;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (3 - 0);
    t10 = (t18 * 1);
    t10 = (t10 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t10;
    t19 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t12, t8, t13, t15);
    t6 = t19;

LAB7:    if (t6 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5384);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t17 = (t0 + 1032U);
    t20 = *((char **)t17);
    t21 = (31 - 31);
    t10 = (t21 * -1);
    t22 = (1U * t10);
    t23 = (0 + t22);
    t17 = (t20 + t23);
    t24 = *((unsigned char *)t17);
    t25 = (t0 + 1192U);
    t26 = *((char **)t25);
    t27 = (31 - 31);
    t28 = (t27 * -1);
    t29 = (1U * t28);
    t30 = (0 + t29);
    t25 = (t26 + t30);
    t31 = *((unsigned char *)t25);
    t32 = ieee_p_2592010699_sub_853553178_503743352(IEEE_P_2592010699, t24, t31);
    t33 = (t0 + 5704);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    *((unsigned char *)t37) = t32;
    xsi_driver_first_trans_fast(t33);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t11 = (t6 == (unsigned char)3);
    if (t11 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 5640);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB9:    goto LAB3;

LAB5:    t6 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t9 = (31 - 31);
    t10 = (t9 * -1);
    t22 = (1U * t10);
    t23 = (0 + t22);
    t1 = (t3 + t23);
    t19 = *((unsigned char *)t1);
    t4 = (t0 + 1992U);
    t5 = *((char **)t4);
    t18 = (31 - 31);
    t28 = (t18 * -1);
    t29 = (1U * t28);
    t30 = (0 + t29);
    t4 = (t5 + t30);
    t24 = *((unsigned char *)t4);
    t31 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t19, t24);
    t8 = (t0 + 5640);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t16 = *((char **)t14);
    *((unsigned char *)t16) = t31;
    xsi_driver_first_trans_fast(t8);
    goto LAB9;

}

static void work_a_1380407923_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(74, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5768);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5400);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1380407923_3212880686_p_4(char *t0)
{
    char t6[16];
    char t11[16];
    char t13[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;

LAB0:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 5832);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 8656U);
    t3 = (t0 + 8912);
    t5 = (t6 + 0U);
    t7 = (t5 + 0U);
    *((int *)t7) = 0;
    t7 = (t5 + 4U);
    *((int *)t7) = 3;
    t7 = (t5 + 8U);
    *((int *)t7) = 1;
    t8 = (3 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t5 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t6);
    if (t10 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 8656U);
    t3 = (t0 + 8916);
    t5 = (t6 + 0U);
    t7 = (t5 + 0U);
    *((int *)t7) = 0;
    t7 = (t5 + 4U);
    *((int *)t7) = 3;
    t7 = (t5 + 8U);
    *((int *)t7) = 1;
    t8 = (3 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t5 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t6);
    if (t10 != 0)
        goto LAB7;

LAB8:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 5832);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB3:    t1 = (t0 + 5416);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(81, ng0);
    t7 = (t0 + 1032U);
    t12 = *((char **)t7);
    t14 = ((IEEE_P_2592010699) + 4024);
    t15 = (t0 + 8624U);
    t7 = xsi_base_array_concat(t7, t13, t14, (char)99, (unsigned char)2, (char)97, t12, t15, (char)101);
    t16 = (t0 + 1192U);
    t17 = *((char **)t16);
    t16 = (t0 + 8640U);
    t18 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t11, t7, t13, t17, t16);
    t19 = (t11 + 12U);
    t9 = *((unsigned int *)t19);
    t20 = (1U * t9);
    t21 = (33U != t20);
    if (t21 == 1)
        goto LAB5;

LAB6:    t22 = (t0 + 5896);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t18, 33U);
    xsi_driver_first_trans_fast(t22);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t8 = (32 - 32);
    t9 = (t8 * -1);
    t20 = (1U * t9);
    t27 = (0 + t20);
    t1 = (t2 + t27);
    t10 = *((unsigned char *)t1);
    t3 = (t0 + 5832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t12 = *((char **)t7);
    *((unsigned char *)t12) = t10;
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

LAB5:    xsi_size_not_matching(33U, t20, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(84, ng0);
    t7 = (t0 + 1032U);
    t12 = *((char **)t7);
    t14 = ((IEEE_P_2592010699) + 4024);
    t15 = (t0 + 8624U);
    t7 = xsi_base_array_concat(t7, t13, t14, (char)99, (unsigned char)3, (char)97, t12, t15, (char)101);
    t16 = (t0 + 1192U);
    t17 = *((char **)t16);
    t16 = (t0 + 8640U);
    t18 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t11, t7, t13, t17, t16);
    t19 = (t11 + 12U);
    t9 = *((unsigned int *)t19);
    t20 = (1U * t9);
    t21 = (33U != t20);
    if (t21 == 1)
        goto LAB9;

LAB10:    t22 = (t0 + 5896);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t18, 33U);
    xsi_driver_first_trans_fast(t22);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t8 = (32 - 32);
    t9 = (t8 * -1);
    t20 = (1U * t9);
    t27 = (0 + t20);
    t1 = (t2 + t27);
    t10 = *((unsigned char *)t1);
    t3 = (t0 + 5832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t12 = *((char **)t7);
    *((unsigned char *)t12) = t10;
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

LAB9:    xsi_size_not_matching(33U, t20, 0);
    goto LAB10;

}

static void work_a_1380407923_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(90, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5960);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5432);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1380407923_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1380407923_3212880686_p_0,(void *)work_a_1380407923_3212880686_p_1,(void *)work_a_1380407923_3212880686_p_2,(void *)work_a_1380407923_3212880686_p_3,(void *)work_a_1380407923_3212880686_p_4,(void *)work_a_1380407923_3212880686_p_5};
	xsi_register_didat("work_a_1380407923_3212880686", "isim/testPROCESSOR_isim_beh.exe.sim/work/a_1380407923_3212880686.didat");
	xsi_register_executes(pe);
}
