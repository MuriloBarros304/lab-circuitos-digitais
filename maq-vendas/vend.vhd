-- main
library ieee;
use ieee.std_logic_1164.all;

entity vend is
    port(
        sel : in bit_vector(2 downto 0);
        s, a : in bit_vector(3 downto 0);
        conf, c, clock : in bit;
        sel_out : out bit_vector(2 downto 0) := sel;
        disp_moeda, w : out bit
    );
end vend;

architecture behav of vend is
    component reg3 is
        port(
            d : in bit_vector(2 downto 0);
            clk : in bit;
            load : in bit;
            q : out bit_vector(2 downto 0)
        );
    end component;
    component comb is
        port(
            s2, s1, s0, c, conf, tot_eq_s, tot_gt_s, vm_gt_tr, prod_eq_0 : in bit;
            n2, n1, n0, ld_tot, clr_tot, ld_sel, clr_sel, ld_vm, clr_vm, v_w_en, v_r_en : out bit;
            disp_moeda, w : out bit
        );
    end component;
    component datapath is
        port(
            sel : in bit_vector(2 downto 0);
            s, a : in bit_vector(3 downto 0);
            ld_tot : in bit;
            clr_tot : in bit;
            ld_sel : in bit;
            clr_sel : in bit;
            ld_vm : in bit;
            clr_vm : in bit;
            v_w_en : in bit;
            v_r_en : in bit;
            clock : in bit;
            tot_gt_s : out bit;
            tot_eq_s : out bit;
            prod_eq_0 : out bit;
            vm_gt_tr : out bit
        );
    end component;
    signal s0, s1, s2 : bit;
    signal n0, n1, n2 : bit;
    signal tot_gt_s, tot_eq_s, prod_eq_0, vm_gt_tr : bit;
    signal ld_tot, clr_tot, ld_sel, clr_sel, ld_vm, clr_vm, v_w_en, v_r_en, vm_gt_tr_s : bit;
begin 
    --registradores de estado
    r0: reg3 port map(d(0) => n0, d(1) => n1, d(2) => n2, clk => clock, load => '1',
    q(0) => s0, q(1) => s1, q(2) => s2);

    --combinacional
    cb: comb port map(s2 => s2, s1 => s1, s0 => s0, c => c, conf => conf, tot_eq_s => tot_eq_s,
    tot_gt_s => tot_gt_s, vm_gt_tr => vm_gt_tr, prod_eq_0 => prod_eq_0, n2 => n2, n1 => n1, n0 => n0,
    ld_tot => ld_tot, clr_tot => clr_tot, ld_sel => ld_sel, clr_sel => clr_sel, ld_vm => ld_vm,
    clr_vm => clr_vm, v_w_en => v_w_en, v_r_en => v_r_en, disp_moeda => disp_moeda, w => w);

    --datapath
    dp: datapath port map(sel => sel, s => s, a => a, ld_tot => ld_tot, clr_tot => clr_tot,
    ld_sel => ld_sel, clr_sel => clr_sel, ld_vm => ld_vm, clr_vm => clr_vm, v_w_en => v_w_en,
    v_r_en => v_r_en, clock => clock, tot_gt_s => tot_gt_s, tot_eq_s => tot_eq_s, prod_eq_0 => prod_eq_0,
    vm_gt_tr => vm_gt_tr);
end architecture behav;