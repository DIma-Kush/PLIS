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

char *IEEE_P_0774719531;
char *XILINXCORELIB_P_1705937335;
char *STD_TEXTIO;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *XILINXCORELIB_P_1837083571;
char *XILINXCORELIB_P_0718376120;
char *STD_STANDARD;
char *XILINXCORELIB_P_3381355550;
char *IEEE_P_2592010699;
char *XILINXCORELIB_P_3155556343;
char *UNISIM_P_0947159679;
char *XILINXCORELIB_P_1433929353;
char *XILINXCORELIB_P_0624651749;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    work_a_4003344996_3212880686_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    std_textio_init();
    xilinxcorelib_p_1837083571_init();
    xilinxcorelib_p_1705937335_init();
    ieee_p_3620187407_init();
    xilinxcorelib_a_0293436753_3212880686_init();
    work_a_0083724723_4067396290_init();
    xilinxcorelib_a_2354742794_3212880686_init();
    work_a_2581841889_3926680433_init();
    xilinxcorelib_p_0718376120_init();
    xilinxcorelib_p_3381355550_init();
    xilinxcorelib_p_1433929353_init();
    xilinxcorelib_p_3155556343_init();
    xilinxcorelib_p_0624651749_init();
    xilinxcorelib_a_2705066794_3212880686_init();
    xilinxcorelib_a_3679565948_3212880686_init();
    xilinxcorelib_a_2473539766_3212880686_init();
    work_a_1843507802_2615762968_init();
    work_a_2936760412_3212880686_init();
    work_a_2966349319_3212880686_init();
    work_a_4282659517_3212880686_init();
    work_a_0505501398_3212880686_init();
    unisim_a_2562466605_1496654361_init();
    unisim_a_1717296735_4086321779_init();
    work_a_2273062887_0625112718_init();
    work_a_0107543918_3212880686_init();
    work_a_0511204921_3212880686_init();


    xsi_register_tops("work_a_0511204921_3212880686");

    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    XILINXCORELIB_P_1705937335 = xsi_get_engine_memory("xilinxcorelib_p_1705937335");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    XILINXCORELIB_P_1837083571 = xsi_get_engine_memory("xilinxcorelib_p_1837083571");
    XILINXCORELIB_P_0718376120 = xsi_get_engine_memory("xilinxcorelib_p_0718376120");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    XILINXCORELIB_P_3381355550 = xsi_get_engine_memory("xilinxcorelib_p_3381355550");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    XILINXCORELIB_P_3155556343 = xsi_get_engine_memory("xilinxcorelib_p_3155556343");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    XILINXCORELIB_P_1433929353 = xsi_get_engine_memory("xilinxcorelib_p_1433929353");
    XILINXCORELIB_P_0624651749 = xsi_get_engine_memory("xilinxcorelib_p_0624651749");

    return xsi_run_simulation(argc, argv);

}
