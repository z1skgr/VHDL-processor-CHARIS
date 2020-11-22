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
static const char *ng0 = "C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB3/Shift_extend.vhd";



static void work_a_4172186908_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5530);
    t4 = 1;
    if (6U == 6U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5536);
    t4 = 1;
    if (6U == 6U)
        goto LAB13;

LAB14:    t4 = 0;

LAB15:    if (t4 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5558);
    t4 = 1;
    if (6U == 6U)
        goto LAB23;

LAB24:    t4 = 0;

LAB25:    if (t4 != 0)
        goto LAB21;

LAB22:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5564);
    t4 = 1;
    if (6U == 6U)
        goto LAB31;

LAB32:    t4 = 0;

LAB33:    if (t4 != 0)
        goto LAB29;

LAB30:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5586);
    t4 = 1;
    if (6U == 6U)
        goto LAB41;

LAB42:    t4 = 0;

LAB43:    if (t4 != 0)
        goto LAB39;

LAB40:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5608);
    t4 = 1;
    if (6U == 6U)
        goto LAB51;

LAB52:    t4 = 0;

LAB53:    if (t4 != 0)
        goto LAB49;

LAB50:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5616);
    t4 = 1;
    if (6U == 6U)
        goto LAB61;

LAB62:    t4 = 0;

LAB63:    if (t4 != 0)
        goto LAB59;

LAB60:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5624);
    t4 = 1;
    if (6U == 6U)
        goto LAB71;

LAB72:    t4 = 0;

LAB73:    if (t4 != 0)
        goto LAB69;

LAB70:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5632);
    t4 = 1;
    if (6U == 6U)
        goto LAB81;

LAB82:    t4 = 0;

LAB83:    if (t4 != 0)
        goto LAB79;

LAB80:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5638);
    t4 = 1;
    if (6U == 6U)
        goto LAB89;

LAB90:    t4 = 0;

LAB91:    if (t4 != 0)
        goto LAB87;

LAB88:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5644);
    t4 = 1;
    if (6U == 6U)
        goto LAB97;

LAB98:    t4 = 0;

LAB99:    if (t4 != 0)
        goto LAB95;

LAB96:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5650);
    t4 = 1;
    if (6U == 6U)
        goto LAB105;

LAB106:    t4 = 0;

LAB107:    if (t4 != 0)
        goto LAB103;

LAB104:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 5656);
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
LAB2:    xsi_set_current_line(45, ng0);
    t8 = xsi_get_transient_memory(16U);
    memset(t8, 0, 16U);
    t9 = t8;
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t12 = (15 - 15);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t16 = *((unsigned char *)t10);
    memset(t9, t16, 16U);
    t17 = (t0 + 3336);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t8, 16U);
    xsi_driver_first_trans_delta(t17, 0U, 16U, 0LL);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3336);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 16U, 16U, 0LL);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 6U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(48, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t8 = (t0 + 3336);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 16U);
    xsi_driver_first_trans_delta(t8, 0U, 16U, 0LL);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 5542);
    t4 = (16U != 16U);
    if (t4 == 1)
        goto LAB19;

LAB20:    t3 = (t0 + 3336);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t3, 16U, 16U, 0LL);
    goto LAB3;

LAB13:    t5 = 0;

LAB16:    if (t5 < 6U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB14;

LAB18:    t5 = (t5 + 1);
    goto LAB16;

LAB19:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB20;

LAB21:    xsi_set_current_line(51, ng0);
    t8 = xsi_get_transient_memory(16U);
    memset(t8, 0, 16U);
    t9 = t8;
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t12 = (15 - 15);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t16 = *((unsigned char *)t10);
    memset(t9, t16, 16U);
    t17 = (t0 + 3336);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t8, 16U);
    xsi_driver_first_trans_delta(t17, 0U, 16U, 0LL);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3336);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 16U, 16U, 0LL);
    goto LAB3;

LAB23:    t5 = 0;

LAB26:    if (t5 < 6U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB24;

LAB28:    t5 = (t5 + 1);
    goto LAB26;

LAB29:    xsi_set_current_line(54, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t8 = (t0 + 3336);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 16U);
    xsi_driver_first_trans_delta(t8, 16U, 16U, 0LL);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 5570);
    t4 = (16U != 16U);
    if (t4 == 1)
        goto LAB37;

LAB38:    t3 = (t0 + 3336);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t3, 0U, 16U, 0LL);
    goto LAB3;

LAB31:    t5 = 0;

LAB34:    if (t5 < 6U)
        goto LAB35;
    else
        goto LAB33;

LAB35:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB32;

LAB36:    t5 = (t5 + 1);
    goto LAB34;

LAB37:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB38;

LAB39:    xsi_set_current_line(57, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t8 = (t0 + 3336);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 16U);
    xsi_driver_first_trans_delta(t8, 16U, 16U, 0LL);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 5592);
    t4 = (16U != 16U);
    if (t4 == 1)
        goto LAB47;

LAB48:    t3 = (t0 + 3336);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t3, 0U, 16U, 0LL);
    goto LAB3;

LAB41:    t5 = 0;

LAB44:    if (t5 < 6U)
        goto LAB45;
    else
        goto LAB43;

LAB45:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB42;

LAB46:    t5 = (t5 + 1);
    goto LAB44;

LAB47:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB48;

LAB49:    xsi_set_current_line(60, ng0);
    t8 = xsi_get_transient_memory(14U);
    memset(t8, 0, 14U);
    t9 = t8;
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t12 = (15 - 15);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t16 = *((unsigned char *)t10);
    memset(t9, t16, 14U);
    t17 = (t0 + 3336);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t8, 14U);
    xsi_driver_first_trans_delta(t17, 0U, 14U, 0LL);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3336);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 14U, 16U, 0LL);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 5614);
    t4 = (2U != 2U);
    if (t4 == 1)
        goto LAB57;

LAB58:    t3 = (t0 + 3336);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_delta(t3, 30U, 2U, 0LL);
    goto LAB3;

LAB51:    t5 = 0;

LAB54:    if (t5 < 6U)
        goto LAB55;
    else
        goto LAB53;

LAB55:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB52;

LAB56:    t5 = (t5 + 1);
    goto LAB54;

LAB57:    xsi_size_not_matching(2U, 2U, 0);
    goto LAB58;

LAB59:    xsi_set_current_line(64, ng0);
    t8 = xsi_get_transient_memory(14U);
    memset(t8, 0, 14U);
    t9 = t8;
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t12 = (15 - 15);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t16 = *((unsigned char *)t10);
    memset(t9, t16, 14U);
    t17 = (t0 + 3336);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t8, 14U);
    xsi_driver_first_trans_delta(t17, 0U, 14U, 0LL);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3336);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 14U, 16U, 0LL);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 5622);
    t4 = (2U != 2U);
    if (t4 == 1)
        goto LAB67;

LAB68:    t3 = (t0 + 3336);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_delta(t3, 30U, 2U, 0LL);
    goto LAB3;

LAB61:    t5 = 0;

LAB64:    if (t5 < 6U)
        goto LAB65;
    else
        goto LAB63;

LAB65:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB62;

LAB66:    t5 = (t5 + 1);
    goto LAB64;

LAB67:    xsi_size_not_matching(2U, 2U, 0);
    goto LAB68;

LAB69:    xsi_set_current_line(68, ng0);
    t8 = xsi_get_transient_memory(14U);
    memset(t8, 0, 14U);
    t9 = t8;
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t12 = (15 - 15);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t16 = *((unsigned char *)t10);
    memset(t9, t16, 14U);
    t17 = (t0 + 3336);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t8, 14U);
    xsi_driver_first_trans_delta(t17, 0U, 14U, 0LL);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3336);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 14U, 16U, 0LL);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 5630);
    t4 = (2U != 2U);
    if (t4 == 1)
        goto LAB77;

LAB78:    t3 = (t0 + 3336);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_delta(t3, 30U, 2U, 0LL);
    goto LAB3;

LAB71:    t5 = 0;

LAB74:    if (t5 < 6U)
        goto LAB75;
    else
        goto LAB73;

LAB75:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB72;

LAB76:    t5 = (t5 + 1);
    goto LAB74;

LAB77:    xsi_size_not_matching(2U, 2U, 0);
    goto LAB78;

LAB79:    xsi_set_current_line(72, ng0);
    t8 = xsi_get_transient_memory(16U);
    memset(t8, 0, 16U);
    t9 = t8;
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t12 = (15 - 15);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t16 = *((unsigned char *)t10);
    memset(t9, t16, 16U);
    t17 = (t0 + 3336);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t8, 16U);
    xsi_driver_first_trans_delta(t17, 0U, 16U, 0LL);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3336);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 16U, 16U, 0LL);
    goto LAB3;

LAB81:    t5 = 0;

LAB84:    if (t5 < 6U)
        goto LAB85;
    else
        goto LAB83;

LAB85:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB82;

LAB86:    t5 = (t5 + 1);
    goto LAB84;

LAB87:    xsi_set_current_line(75, ng0);
    t8 = xsi_get_transient_memory(16U);
    memset(t8, 0, 16U);
    t9 = t8;
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t12 = (15 - 15);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t16 = *((unsigned char *)t10);
    memset(t9, t16, 16U);
    t17 = (t0 + 3336);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t8, 16U);
    xsi_driver_first_trans_delta(t17, 0U, 16U, 0LL);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3336);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 16U, 16U, 0LL);
    goto LAB3;

LAB89:    t5 = 0;

LAB92:    if (t5 < 6U)
        goto LAB93;
    else
        goto LAB91;

LAB93:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB90;

LAB94:    t5 = (t5 + 1);
    goto LAB92;

LAB95:    xsi_set_current_line(78, ng0);
    t8 = xsi_get_transient_memory(16U);
    memset(t8, 0, 16U);
    t9 = t8;
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t12 = (15 - 15);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t16 = *((unsigned char *)t10);
    memset(t9, t16, 16U);
    t17 = (t0 + 3336);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t8, 16U);
    xsi_driver_first_trans_delta(t17, 0U, 16U, 0LL);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3336);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 16U, 16U, 0LL);
    goto LAB3;

LAB97:    t5 = 0;

LAB100:    if (t5 < 6U)
        goto LAB101;
    else
        goto LAB99;

LAB101:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB98;

LAB102:    t5 = (t5 + 1);
    goto LAB100;

LAB103:    xsi_set_current_line(81, ng0);
    t8 = xsi_get_transient_memory(16U);
    memset(t8, 0, 16U);
    t9 = t8;
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t12 = (15 - 15);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t16 = *((unsigned char *)t10);
    memset(t9, t16, 16U);
    t17 = (t0 + 3336);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t8, 16U);
    xsi_driver_first_trans_delta(t17, 0U, 16U, 0LL);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3336);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 16U, 16U, 0LL);
    goto LAB3;

LAB105:    t5 = 0;

LAB108:    if (t5 < 6U)
        goto LAB109;
    else
        goto LAB107;

LAB109:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB106;

LAB110:    t5 = (t5 + 1);
    goto LAB108;

}

static void work_a_4172186908_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(89, ng0);

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


extern void work_a_4172186908_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4172186908_3212880686_p_0,(void *)work_a_4172186908_3212880686_p_1};
	xsi_register_didat("work_a_4172186908_3212880686", "isim/testPROCESSOR_isim_beh.exe.sim/work/a_4172186908_3212880686.didat");
	xsi_register_executes(pe);
}
