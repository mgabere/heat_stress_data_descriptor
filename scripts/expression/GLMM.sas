
                                                                                                   /*
 ______________________________________________________________________________________________________________________
|                                                                                                                      |
|  Date :             10th 12, 2015                                                                 	                 |
|                                                                                                                      |
|  Study Title :      A Model of Exposure to Extreme Environmental Heat Uncovers the Human							               |                                                                                | 
|                                                                                                                      |
|  Principal Investigator :     A. Bouchama                                                                            |
|                                                                                                                      |
|  Sr. Biostatistician : M. Hussein                                                                                    |
|                                                                                                                      |
|______________________________________________________________________________________________________________________|

*/
/*** replace _local_directory_ with a folder location */
libname Heat_gee '_local_directory_'

%macro ODSOff(); /* Call prior to BY-group processing */
ods graphics off;
ods exclude all;
ods noresults;
%mend;
 
%macro ODSOn(); /* Call after BY-group processing */
ods graphics on;
ods exclude none;
ods results;
%mend;


/* importing the data from the original Excell file */

  data HEAT_GEE.Master                                  ;
      %let _EFIERR_ = 0; /* set the ERROR detection macro variable */
	  /*** replace _local_directory_ with the location of the data */
      infile '_local_directory_\expression_heatstress_three_time_points_19.08.15.csv'
 delimiter = ',' MISSOVER DSD lrecl=32767 firstobs=2 ;
         informat probes $25. ;
         informat Symbols $25. ;
         informat T0_31_S6_CEL best32. ;
         informat T0_34_S10_CEL best32. ;
         informat T0_37_S14_CEL best32. ;
         informat T0_40_S15_CEL best32. ;
         informat T0_47_S2_CEL best32. ;
         informat T0_73_S3_CEL best32. ;
         informat T0_75_S4_CEL best32. ;
         informat T0_77_S1_CEL best32. ;
         informat T0_79_S5_CEL best32. ;
         informat T0_83_S7_CEL best32. ;
         informat T0_85_S8_CEL best32. ;
         informat T0_87_S9_CEL best32. ;
         informat T0_91_S11_CEL best32. ;
         informat T0_96_S12_CEL best32. ;
         informat T0_98_S13_CEL best32. ;
         informat T1_32_S6_CEL best32. ;
         informat T1_35_S10_CEL best32. ;
         informat T1_38_S14_CEL best32. ;
         informat T1_41_S15_CEL best32. ;
         informat T1_44_S11_CEL best32. ;
          informat T1_48_S2_CEL best32. ;
          informat T1_74_S3_CEL best32. ;
          informat T1_76_S4_CEL best32. ;
          informat T1_78_S1_CEL best32. ;
          informat T1_80_S5_CEL best32. ;
          informat T1_84_S7_CEL best32. ;
          informat T1_86_S8_CEL best32. ;
          informat T1_88_S9_CEL best32. ;
          informat T1_97_S12_CEL best32. ;
          informat T1_99_S13_CEL best32. ;
          informat T2_25_S3_CEL best32. ;
          informat T2_26_S4_CEL best32. ;
          informat T2_27_S5_CEL best32. ;
          informat T2_28_S7_CEL best32. ;
          informat T2_29_S9_CEL best32. ;
          informat T2_30_S13_CEL best32. ;
          informat T2_33_S6_CEL best32. ;
          informat T2_36_S10_CEL best32. ;
          informat T2_39_S14_CEL best32. ;
          informat T2_42_S15_CEL best32. ;
          informat T2_43_S8_CEL best32. ;
          informat T2_45_S11_CEL best32. ;
          informat T2_46_S12_CEL best32. ;
          informat T2_71_S1_CEL best32. ;
          informat T2_72_S2_CEL best32. ;
          informat Variance best32. ;
          format probes $25. ;
          format Symbols $25. ;
          format T0_31_S6_CEL best12. ;
          format T0_34_S10_CEL best12. ;
          format T0_37_S14_CEL best12. ;
          format T0_40_S15_CEL best12. ;
          format T0_47_S2_CEL best12. ;
          format T0_73_S3_CEL best12. ;
          format T0_75_S4_CEL best12. ;
          format T0_77_S1_CEL best12. ;
          format T0_79_S5_CEL best12. ;
          format T0_83_S7_CEL best12. ;
          format T0_85_S8_CEL best12. ;
          format T0_87_S9_CEL best12. ;
          format T0_91_S11_CEL best12. ;
          format T0_96_S12_CEL best12. ;
          format T0_98_S13_CEL best12. ;
          format T1_32_S6_CEL best12. ;
          format T1_35_S10_CEL best12. ;
          format T1_38_S14_CEL best12. ;
          format T1_41_S15_CEL best12. ;
          format T1_44_S11_CEL best12. ;
          format T1_48_S2_CEL best12. ;
          format T1_74_S3_CEL best12. ;
          format T1_76_S4_CEL best12. ;
          format T1_78_S1_CEL best12. ;
          format T1_80_S5_CEL best12. ;
          format T1_84_S7_CEL best12. ;
          format T1_86_S8_CEL best12. ;
          format T1_88_S9_CEL best12. ;
          format T1_97_S12_CEL best12. ;
          format T1_99_S13_CEL best12. ;
          format T2_25_S3_CEL best12. ;
          format T2_26_S4_CEL best12. ;
          format T2_27_S5_CEL best12. ;
          format T2_28_S7_CEL best12. ;
          format T2_29_S9_CEL best12. ;
          format T2_30_S13_CEL best12. ;
          format T2_33_S6_CEL best12. ;
          format T2_36_S10_CEL best12. ;
          format T2_39_S14_CEL best12. ;
          format T2_42_S15_CEL best12. ;
          format T2_43_S8_CEL best12. ;
          format T2_45_S11_CEL best12. ;
          format T2_46_S12_CEL best12. ;
          format T2_71_S1_CEL best12. ;
          format T2_72_S2_CEL best12. ;
          format Variance best12. ;
       input
                   probes $
                   Symbols $
                   T0_31_S6_CEL
                   T0_34_S10_CEL
                   T0_37_S14_CEL
                   T0_40_S15_CEL
                   T0_47_S2_CEL
                   T0_73_S3_CEL
                   T0_75_S4_CEL
                   T0_77_S1_CEL
                   T0_79_S5_CEL
                   T0_83_S7_CEL
                   T0_85_S8_CEL
                   T0_87_S9_CEL
                   T0_91_S11_CEL
                   T0_96_S12_CEL
                   T0_98_S13_CEL
                   T1_32_S6_CEL
                   T1_35_S10_CEL
                   T1_38_S14_CEL
                   T1_41_S15_CEL
                   T1_44_S11_CEL
                   T1_48_S2_CEL
                   T1_74_S3_CEL
                   T1_76_S4_CEL
                   T1_78_S1_CEL
                   T1_80_S5_CEL
                   T1_84_S7_CEL
                   T1_86_S8_CEL
                   T1_88_S9_CEL
                   T1_97_S12_CEL
                   T1_99_S13_CEL
                   T2_25_S3_CEL
                   T2_26_S4_CEL
                   T2_27_S5_CEL
                   T2_28_S7_CEL
                   T2_29_S9_CEL
                   T2_30_S13_CEL
                   T2_33_S6_CEL
                   T2_36_S10_CEL
                   T2_39_S14_CEL
                   T2_42_S15_CEL
                   T2_43_S8_CEL
                   T2_45_S11_CEL
                   T2_46_S12_CEL
                   T2_71_S1_CEL
                  T2_72_S2_CEL
                  Variance;

if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */
      run;

/****** sort on the variance variable and then keep only the top 4925 (top 25% genes with high variance) *****/

	  proc sort data=heat_gee.master;
	  by  variance DESCENDING;
	  run;

/** this code can be replaced by curobs=i;*/

data heat_gee.master2;

set heat_gee.master;

retain i 0;
i=i+1;
if i le 4925 then output;
else delete;
run;


data heat_gee.master2;

set heat_gee.master2;

drop  i variance;

run;

/***** sorting prior to transposing on probes ****/

proc sort data=heat_gee.master2;

by probes;

run;


/* transpose the dataset so genes become in the row */
proc transpose data=heat_gee.master2 out=heat_gee.Master2_tr;
by probes;

run;

/********** data columns **********/

Data heat_gee.master2_tr;
set heat_gee.master2_tr(rename=(col1=Expression));
Group =scan(_name_, 1, "_");
subject= scan (_name_, 3, "_");

keep probes subject group expression;
run;




/****** sorting by Symbols, subject and time point *******/

proc sort data=heat_gee.master2_tr;
by probes subject group;
run;

/*********** analysis of each gene over time using MIxed model ************/

%odsOFF();
	ods output HLM3=heat_gee.HLMstats;
	ods output Diffs= heat_gee.Comparisons;
	*ods trace on;
	PROC MIXED data=heat_gee.master2_tr;
	  CLASS group subject;
	  MODEL expression = group /ddfm=kenwardroger ;
	  REPEATED group/ SUBJECT=subject TYPE=un hlm R rcorr ri;
	  lsmeans group/ diff=control('T0');
	    lsmeans group/ diff=control('T1');
	;
	by probes;
	run; 
	*ods trace off;
	ods output close;
%odson();


/******* Drop effect that are needed from the file ********/
data heat_gee.fixedeffect;
	set heat_gee.fixedeffect;
	if effect="Group" or effect="Gender" then delete;
	format ProbF PVALUE12.10;

Run;

/***** Drop Group=T0 and _Group=T1 to keep only T1 Vs T0 and T2 vs T0 and T2 vs T1 ****/
data heat_gee.Comparisons;
	set heat_gee.Comparisons;
	Fold_change=2 ** estimate;/*** create a new value with base 2 to indicate the fold change ***/
	if group="T0" and _group="T1" then delete;
	format Probt PVALUE12.10;

Run;
/**** seprate the dataset ****/

data out1 out2 out3;
	set heat_gee.Comparisons;
	if group="T1" and _group="T0" then output out1;
	else if group="T2" and _group = "T0" then output out2;
	else if group="T2" and _group = "T1" then output out3;

Run;

/***** renaming the variables to create 3 effects ***/
data out1;
set out1 (rename = (Probt=Pvalue_t1t0));

T1vsT0_FC=FOld_change;
label Pvalue_t1t0='Pvalue_t1t0';
keep probes T1vsT0_FC Pvalue_t1t0;
run;

data out2;
set out2 (rename = (Probt=Pvalue_t2t0));

T2vsT0_FC=FOld_change;
label Pvalue_t2t0='Pvalue_t2t0';
keep probes T2vsT0_FC Pvalue_t2t0;
run;

data out3;
set out3 (rename = (Probt=Pvalue_t2t1));

T2vsT1_FC=FOld_change;
label Pvalue_t2t1='Pvalue_t2t';

keep probes T2vsT1_FC Probt Pvalue_t2t1;
run;

/**** merging all datasets together *****/

data heat_gee.comarisons_Tog;
merge out1 out2 out3;
by probes;
run;


/*********** renaming the p-value for the overall Difference to raw_P so it can be passed to the multitest procedure ******/

data heat_gee.hlmstats;
set heat_gee.hlmstats;

rename probf=raw_p;

run;

proc sort data=heat_gee.hlmstats;
by raw_p;
run;

ods output pvalues=heat_gee.adjustedpvalues;
proc multtest inpvalues=heat_gee.hlmstats  fdr;
run;
ods close;

data heat_gee.Adjustedpvalues;
set  heat_gee.Adjustedpvalues;

format raw PVALUE12.10;
format FalseDiscoveryRate PVALUE12.10;
run;

/***** merging the names of the probes back to the dataset***/

/***** create test variable **********/

data heat_gee.hlmstats2;

set heat_gee.hlmstats;

retain Test 0;

Test=Test+1;

keep probes test;

run;
/* merge p-values with probes names******/
data heat_gee.Adjustedpvalues_f;
merge heat_gee.Adjustedpvalues heat_gee.hlmstats2;
by test;
run;

/****** merge with symbols *********/

proc sort data=heat_gee.master2;
by probes;
run;

proc sort data=heat_gee.adjustedpvalues_f;
by probes;
run;

data heat_gee.Heat_final_results;

merge heat_gee.adjustedpvalues_f heat_gee.master2 (keep= probes symbols) heat_gee.Comarisons_tog;

by probes;

run;

/**** merge 

/****** final sort of the dataset by raw p-values ******/


proc sort data=heat_gee.heat_final_results;
by raw;
run;

data heat_gee.heat_final_results_up heat_gee.heat_final_results_down;

set heat_gee.heat_final_results;

if T1vsT0_FC LE 1 then output heat_gee.heat_final_results_down;
else output heat_gee.heat_final_results_up;

run;


/***** seprating also two data sets for up and down regulated ****/


/****** outputing the Overall Analysis dataset in an File ****/

ods MSOffice2K body='_local_directory_\Heat_final_dataset25percent_WithFC_ALL.xls';

   proc print data=heat_gee.heat_final_results;
   var Probes symbols raw FalseDiscoveryRate T1vsT0_FC Pvalue_t1t0   T2vsT0_FC Pvalue_t2t0 T2vsT1_FC Pvalue_t2t1;
   run;

ods MSOffice2K close;

/**** output of the up regulated *****/

ods MSOffice2K body='_local_directory_\Heat_final_dataset25percent_WithFC_UP.xls';

   proc print data=heat_gee.heat_final_results_UP;
   var Probes symbols raw FalseDiscoveryRate T1vsT0_FC Pvalue_t1t0   T2vsT0_FC Pvalue_t2t0 T2vsT1_FC Pvalue_t2t1;
   run;

ods MSOffice2K close;

/********* the analysis of the down reguated ******/


ods MSOffice2K body='_local_directory_\Heat_final_dataset25percent_WithFC_Down.xls';

   proc print data=heat_gee.heat_final_results_Down;
   var Probes symbols raw FalseDiscoveryRate T1vsT0_FC Pvalue_t1t0   T2vsT0_FC Pvalue_t2t0 T2vsT1_FC Pvalue_t2t1;
   run;

ods MSOffice2K close;

