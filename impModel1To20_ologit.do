log using "H:\SZ\Projekt_LehrerNoten\Results\log_file_1To20_28102021_ologit.txt", text replace

// IMP 1 
use "H:\SZ\Projekt_LehrerNoten\Results\impData1.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
estat icc
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1)) // predicted probabilities relying on margins
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
//marginsplot
fit_meologit_2lev

// IMP 2 
use "H:\SZ\Projekt_LehrerNoten\Results\impData2.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

// IMP 3
use "H:\SZ\Projekt_LehrerNoten\Results\impData3.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 

margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

// IMP 4
use "H:\SZ\Projekt_LehrerNoten\Results\impData4.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

// IMP 5 
use "H:\SZ\Projekt_LehrerNoten\Results\impData5.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

// IMP 6 
use "H:\SZ\Projekt_LehrerNoten\Results\impData6.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

// IMP 7 
use "H:\SZ\Projekt_LehrerNoten\Results\impData7.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

// IMP 8 
use "H:\SZ\Projekt_LehrerNoten\Results\impData8.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

// IMP 9
use "H:\SZ\Projekt_LehrerNoten\Results\impData9.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev, nostop

// IMP 10 
use "H:\SZ\Projekt_LehrerNoten\Results\impData10.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev, nostop

// IMP 11 
use "H:\SZ\Projekt_LehrerNoten\Results\impData11.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

// IMP 12 
use "H:\SZ\Projekt_LehrerNoten\Results\impData12.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

// IMP 13 
use "H:\SZ\Projekt_LehrerNoten\Results\impData13.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

// IMP 14 
use "H:\SZ\Projekt_LehrerNoten\Results\impData14.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

// IMP 15
use "H:\SZ\Projekt_LehrerNoten\Results\impData15.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

// IMP 16 
use "H:\SZ\Projekt_LehrerNoten\Results\impData16.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev, nostop

// IMP 17 
use "H:\SZ\Projekt_LehrerNoten\Results\impData17.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

// IMP 18 
use "H:\SZ\Projekt_LehrerNoten\Results\impData18.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

// IMP 19 
use "H:\SZ\Projekt_LehrerNoten\Results\impData19.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

// IMP 20 
use "H:\SZ\Projekt_LehrerNoten\Results\impData20.dta", clear
destring trnotedeu_r, replace
meologit trnotedeu_r wle_ortho BEFKIwle AnstrB i.TR_geschlecht TR_SPF_r FHBAm i.UNIm mig GY Pspfges SuS_KL wle_orthoM AntMig AntMaed_KL SysMod Lgender Llja_FDZ querFremdYes intGeschFHBA intGeschUni intKompFHBA intKompUni LS_gender, || idteach_d_FDZ1:, pw(wgt_L) 
margins i.TR_geschlecht, atmeans predict(mu fixedonly outcome(#1))
margins i.UNIm, atmeans predict(mu fixedonly outcome(#1))
fit_meologit_2lev

log close
