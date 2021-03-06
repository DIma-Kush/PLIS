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
static const char *ng0 = "C:/Users/Dima/Desktop/AB_lab4/AB_not_conv_tb.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_2766858932_3212880686_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    int64 t12;

LAB0:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 + 1);
    t2 = (t0 + 4632);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t5;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 + 1);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, t5, 8);
    t6 = (t0 + 4696);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 + 2);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, t5, 8);
    t6 = (t0 + 4760);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 + 3);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, t5, 8);
    t6 = (t0 + 4824);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 + 4);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, t5, 8);
    t6 = (t0 + 4888);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(68, ng0);
    t12 = (10.000000000000000 * 1000000LL);
    t2 = (t0 + 3560);
    xsi_process_wait(t2, t12);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}

static void work_a_2766858932_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4000U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 4952);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 4952);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2766858932_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 4248U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}


extern void work_a_2766858932_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2766858932_3212880686_p_0,(void *)work_a_2766858932_3212880686_p_1,(void *)work_a_2766858932_3212880686_p_2};
	xsi_register_didat("work_a_2766858932_3212880686", "isim/AB_not_conv_scheme_AB_not_conv_scheme_sch_tb_isim_beh.exe.sim/work/a_2766858932_3212880686.didat");
	xsi_register_executes(pe);
}
