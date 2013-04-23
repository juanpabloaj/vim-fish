" File: fish.vim
" Author: JuanPabloAJ jpabloaj@gmail.com
" Description: fish scripting language syntax

if !exists("main_syntax")
    if version < 600
        syntax clear
    elseif exists("b:current_syntax")
        finish
    endif
    let main_syntax = 'fish'
endif


syntax region fishComment start=+;+ end=+$+ keepend
syntax keyword fishConditional if else end_if then case section caseof case_of end_case end_section endcase endif
syntax keyword fishRepeat loop end_loop while section command endcommand end_command endloop
syntax keyword fishFunction def end define defin defi
syntax keyword fishWords1 a ap app appl apply array at att atta attac attach ca cal call con conf confi config constitutive_model constitutivemodel exit f_prop fish fishcall fix friend print while_stepping whilestepping grid help his ieb initial interface mark movie new plot quit restore return save sclin set solve stop structure sys title track water window cont conti contin continu continue co cop copy cycle cy cyc cycl free fr fre ge gen gene gener genera generat generate giic gr gro grou group he hel hist histo histor history iebo iebou ieboun iebound iebounda ieboundar ieboundary ini init initi initia inte inter interf interfa interfac interi interio interior ma mar model m mo mod opt pa pau paus pause pl plo pr pri prin q qu qui re res rest resto restor ret retu retur rez rezo rezon rezone sa sav sc scl scli se so sol solv ste step sto str stru struc struct structu structur syst syste system tab tabl tit titl tra trac unmark unma unmar wa wat wate w wi win wind windo
syntax keyword fishWords2 ex_
syntax keyword fishWords3 a_1 a_2 a_wipp a3 a4 act_energy alpha angle anisotropic app_pnt appgw_pnt appth_pnt area aspect asxx asxy asyy aszz atable att_pnt b_f b_wipp b0 b1 b2 back baud bicoe bijoint bimatrix biot_c bsxx bsxy bsyy bszz bulk_current bulk_mod c2table camp camq cap_pressure cf_axi cf_creep cf_dyn cf_ext cf_gw cf_ps cf_therm cga char citable cj2table cjtable clock cm_max co2 cohesion columns con1 con2 conductivity cptable crdt creep crtdel crtime csxx csxy csyy cszz ctable cy_p cy_q d_f d_wipp d2table damp damping datum degrad density di2 dilation dilation_mob dj2table djtable do_update dsxx dsxy dsyy dszz dt dump dy dy_state dydt dydt_gpi dydt_gpj dynamic dytdel dytime e_dot_star e_p e_plastic e_primary echo econduct ega ej_plastic elastic error es_plastic especc_heat et_plastic et_plastic ev_p ev_plastic ev_plastic ev_plsatic ev_tot f_qx f_qy f_t0 f2mod f2table ff_c1 ff_c2 ff_c3 ff_c4 ff_count ff_evd ff_latency ff_switch filcolor fish_msg fj2table fjtable flags flow flprop fmod fobl fobu force fos fos_f fr2 frac_d friction friction_mod fsi fsr ftable ftens g_thexp g2flow gas_c gflow gmsmul gp_copy gpp grand gwtdel gwtime hb_eplas hb_ind hba hbmb hbs hbs3cv hbsigci ieb_pnt ierr igp inimodel int_pnt izones jangle jc2 jcohesion jd2 jdilation jerr jf2 jfriction jpg jtension jzones jgp k_exx k_exy k_eyy k_ezz k_shear_mod k_viscosity k11 k11 k12 k12 k22 k22 kappa kshear lambda large lconduct lspec_heat maxdt mechanical mesh_ratio mm mode mp1 mpc mtable multiplier mutable mv_1 mv0 n_1 n_2 n_cond n_wipp nerr nerr_fish nuyx nuzx nwgpp per_table pi poiss por_table poro2 porosity power pp preparse qdil qvol rho rs1 rs2 rsat s_3dd s_dyn s_echo s_f s_flow s_g1 s_imp s_k1 s_log s_mech s_mess s_movie sat shear_current shear_mod sm_max spec_heat ssi ssi3d ssr ssr3d stable state str_pnt sv sxx sxy syy szz thexp tab_pnt temp temp tenflg tension tflow thexp thtdel thtime tjable trac_pnt ttable udcoe udm_pnt unbal unbflow urand v_nmech v_ntherm vector vga vgp0 vgpcnw vgpcw viscosity visrat vol_strain vsi vsr vsxx vsxy vsyy vszz v_ngw wbiot wbulk wdens wk11 wk12 wk22 x xacc xbody xconduct xdisp xflow xforce xgrav xmod xnwflow xvel xyconduct y yacc ybody yconduct ydisp yflow yforce ygrav ymod ynwflow yvel z_group z_hyst z_model z_prop zart zde11 zde12 zde22 zde33 zdpp zdrot zmsmul zporos zs11 zs12 zs22 zs33 zsub ztea zteb ztec zted ztsa ztsb ztsc ztsd zvisc zxbar csc gwdt hbm hisfile ieb_pnt iface implicit information itasca legend lff_pnt limits list lmul mem memory message mindt mohr-coulomb monchrome ncontours ncwrite ngrwater nmechanical nstep nthermal null output p_stress pac palette pfast pltangle pltcohesion pltfriction plttension pslow r r_integrate range rayleigh reset rff_pnt s_tens s_therm sig1 sig2 small ss temperature thdt thermal theta tolerance ubiquitous ucs udm_pnt umul v_ngw viscous vs wipp xform xreaction xywrite yreaction z_copy
syntax keyword fishWords4 abs acos and asin atan atan2 close cos cparse exp fc_arg float fmem fstring get_mem imem in int ln log lose_mem mat_inverse mat_transpose max min not open or out parse pre_parse read rez_exe sclose sgn sin sopen sqrt sread string swrite table_size tan type write xtable ytable beam ddonut donut hole qdonut reg_add pr_struc ps3d region disp_mag extrap_to_gp mc_fos ps servo zonk relax m_camclay m_drucker m_dy m_elas finn supsolve hyper m_duncan m_mohr m_ss bond_s int_var m_ubi spup ininv i_stress ps derivative erf erfc exp_int filter fftransform froot integrate ludcmp lubksb _modred number spectrum

hi link fishComment Comment
hi link fishConditional Conditional
hi link fishRepeat Repeat
hi link fishFunction Function
hi link fishWords1 Special
hi link fishWords2 Special
hi link fishWords3 Special
hi link fishWords4 Special
