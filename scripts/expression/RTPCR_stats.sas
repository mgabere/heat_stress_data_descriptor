 /*
 ______________________________________________________________________________________________________________________
|                                                                                                                      |
|  Date :             10th 3, 2016                                                                 	                   |
|                                                                                                                      |
|  Study Title :      A Model of Exposure to Extreme Environmental Heat Uncovers the Human							               |                                                                            | 
|                                                                                                                      |
|  Principal Investigator :     A. Bouchama                                                                            |
|                                                                                                                      |
|                                                                                                                      |
|______________________________________________________________________________________________________________________|

*/
libname Rtpcr "Local_direcoty";

ods rtf file='Local_directory\PCR_Data_validation.rtf';

/*** Genes with average log fold change differnt from 0 at time 1 (compared to time 0) will be decleared significant ***/ 
proc univariate data=rtpcr.RTPCR_t1 mu0 = 0;
      var AREG_log ARPC1B_log CYP2A7_log DDIT4_log ERP29_log FSTL1_log HSPA1A_log
			HSPB6_log IRS2_log KLF9_log MYO1G_log OLIG1_log PRDX5_log RP9P_log SSBP1_log
			TSC22D3_log;
			Title 'Validation of Time 1 Vs. 0';
   run;
/*** Genes with average log fold change differnt from 0 at time 2 (compared to time 0) will be decleared significant ***/ 

    proc univariate data=rtpcr.RTPCR_t2 mu0 = 0;
      var AREG_log ARPC1B_log CYP2A7_log DDIT4_log ERP29_log FSTL1_log HSPA1A_log
			HSPB6_log IRS2_log KLF9_log MYO1G_log OLIG1_log PRDX5_log RP9P_log SSBP1_log
		TSC22D3_log;
			Title 'Validation of Time 2 Vs. 0';
   run;

ods rtf close;
