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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *XILINXCORELIB_P_1837083571;
char *STD_STANDARD;
char *XILINXCORELIB_P_1433929353;
char *XILINXCORELIB_P_3155556343;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *XILINXCORELIB_P_2147798235;
char *XILINXCORELIB_P_0914797037;
char *XILINXCORELIB_P_0558180590;
char *UNISIM_P_0947159679;
char *IEEE_P_0774719531;
char *IEEE_P_2592010699;
char *STD_TEXTIO;
char *XILINXCORELIB_P_0718376120;
char *XILINXCORELIB_P_3381355550;
char *IEEE_P_3620187407;
char *XILINXCORELIB_P_1705937335;
char *XILINXCORELIB_P_3106367597;
char *XILINXCORELIB_P_0661866964;
char *XILINXCORELIB_P_0624651749;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_0170299808_4196905866_init();
    std_textio_init();
    xilinxcorelib_p_1837083571_init();
    xilinxcorelib_p_2147798235_init();
    xilinxcorelib_p_0914797037_init();
    xilinxcorelib_p_0558180590_init();
    xilinxcorelib_p_3381355550_init();
    xilinxcorelib_p_1433929353_init();
    xilinxcorelib_p_0661866964_init();
    xilinxcorelib_p_3106367597_init();
    xilinxcorelib_p_0624651749_init();
    xilinxcorelib_a_0411438876_3212880686_init();
    xilinxcorelib_a_2085728976_3212880686_init();
    xilinxcorelib_a_2282842213_3212880686_init();
    xilinxcorelib_a_1234821329_3212880686_init();
    xilinxcorelib_a_3167641842_3212880686_init();
    xilinxcorelib_a_2691065976_3212880686_init();
    work_a_2019720868_1184427103_init();
    work_a_0778311569_3212880686_init();
    work_a_1031425523_2113797894_init();
    ieee_p_0774719531_init();
    xilinxcorelib_p_1705937335_init();
    xilinxcorelib_a_0797987660_3212880686_init();
    work_a_0561692946_2599486343_init();
    xilinxcorelib_p_0718376120_init();
    xilinxcorelib_p_3155556343_init();
    xilinxcorelib_a_3436427588_3212880686_init();
    xilinxcorelib_a_1727081393_3212880686_init();
    xilinxcorelib_a_0446502840_3212880686_init();
    work_a_3615786879_0857454882_init();
    work_a_0869729934_0625112718_init();
    unisim_a_2562466605_1496654361_init();
    work_a_1186220435_3212880686_init();
    work_a_3608997454_3212880686_init();
    work_a_2766858932_3212880686_init();


    xsi_register_tops("work_a_2766858932_3212880686");

    XILINXCORELIB_P_1837083571 = xsi_get_engine_memory("xilinxcorelib_p_1837083571");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    XILINXCORELIB_P_1433929353 = xsi_get_engine_memory("xilinxcorelib_p_1433929353");
    XILINXCORELIB_P_3155556343 = xsi_get_engine_memory("xilinxcorelib_p_3155556343");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    XILINXCORELIB_P_2147798235 = xsi_get_engine_memory("xilinxcorelib_p_2147798235");
    XILINXCORELIB_P_0914797037 = xsi_get_engine_memory("xilinxcorelib_p_0914797037");
    XILINXCORELIB_P_0558180590 = xsi_get_engine_memory("xilinxcorelib_p_0558180590");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    XILINXCORELIB_P_0718376120 = xsi_get_engine_memory("xilinxcorelib_p_0718376120");
    XILINXCORELIB_P_3381355550 = xsi_get_engine_memory("xilinxcorelib_p_3381355550");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    XILINXCORELIB_P_1705937335 = xsi_get_engine_memory("xilinxcorelib_p_1705937335");
    XILINXCORELIB_P_3106367597 = xsi_get_engine_memory("xilinxcorelib_p_3106367597");
    XILINXCORELIB_P_0661866964 = xsi_get_engine_memory("xilinxcorelib_p_0661866964");
    XILINXCORELIB_P_0624651749 = xsi_get_engine_memory("xilinxcorelib_p_0624651749");

    return xsi_run_simulation(argc, argv);

}
