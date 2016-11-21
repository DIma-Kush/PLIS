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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Xilinx/backups/6/DK_lab4_/DK_ROM.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_1085074623_4270653291_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = (3 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 3;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t6);
    t8 = (t0 + 1648U);
    t12 = *((char **)t8);
    t8 = (t12 + 0);
    *((int *)t8) = t11;
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    if (t9 == 0)
        goto LAB3;

LAB15:    if (t9 == 1)
        goto LAB4;

LAB16:    if (t9 == 2)
        goto LAB5;

LAB17:    if (t9 == 3)
        goto LAB6;

LAB18:    if (t9 == 4)
        goto LAB7;

LAB19:    if (t9 == 5)
        goto LAB8;

LAB20:    if (t9 == 6)
        goto LAB9;

LAB21:    if (t9 == 7)
        goto LAB10;

LAB22:    if (t9 == 8)
        goto LAB11;

LAB23:    if (t9 == 9)
        goto LAB12;

LAB24:    if (t9 == 10)
        goto LAB13;

LAB25:
LAB14:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 4980);
    t7 = (t0 + 3032);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 24U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t1 = (t0 + 2952);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 4716);
    t8 = (t0 + 3032);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 24U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB4:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 4740);
    t7 = (t0 + 3032);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 24U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB5:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 4764);
    t7 = (t0 + 3032);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 24U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB6:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4788);
    t7 = (t0 + 3032);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 24U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB7:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 4812);
    t7 = (t0 + 3032);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 24U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB8:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 4836);
    t7 = (t0 + 3032);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 24U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB9:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 4860);
    t7 = (t0 + 3032);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 24U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB10:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 4884);
    t7 = (t0 + 3032);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 24U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB11:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 4908);
    t7 = (t0 + 3032);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 24U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB12:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 4932);
    t7 = (t0 + 3032);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 24U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB13:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4956);
    t7 = (t0 + 3032);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 24U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB26:;
}


extern void work_a_1085074623_4270653291_init()
{
	static char *pe[] = {(void *)work_a_1085074623_4270653291_p_0};
	xsi_register_didat("work_a_1085074623_4270653291", "isim/DK_sch_DK_sch_sch_tb_isim_beh.exe.sim/work/a_1085074623_4270653291.didat");
	xsi_register_executes(pe);
}
