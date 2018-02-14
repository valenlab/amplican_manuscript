cd ../software/ampliconDIVider-master
source ampliconDIV_minimal.sh
samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_Ash2l_merged.bam chr10:2815659-2816091 > temp.bam
parseBam temp.bam run1_Uninjected_Ash2l 2815854 2815896; rm temp.bam
mv frameshift_summary_run1_Uninjected_Ash2l ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_Ash2l.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_Ash2l_merged.bam chr10:2815659-2816091 > temp.bam
parseBam temp.bam run1_Injected_Ash2l 2815854 2815896; rm temp.bam
mv frameshift_summary_run1_Injected_Ash2l ../../analysis/real_dataset/data/amplicondivider/run1_Injected_Ash2l.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_DscamB_merged.bam chr10:40116277-40116709 > temp.bam
parseBam temp.bam run1_Injected_DscamB 40116472 40116514; rm temp.bam
mv frameshift_summary_run1_Injected_DscamB ../../analysis/real_dataset/data/amplicondivider/run1_Injected_DscamB.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_DscamB_merged.bam chr10:40116277-40116709 > temp.bam
parseBam temp.bam run1_Uninjected_DscamB 40116472 40116514; rm temp.bam
mv frameshift_summary_run1_Uninjected_DscamB ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_DscamB.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_FoxA_merged.bam chr14:34986946-34987378 > temp.bam
parseBam temp.bam run1_Uninjected_FoxA 34987141 34987183; rm temp.bam
mv frameshift_summary_run1_Uninjected_FoxA ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_FoxA.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_FoxA_merged.bam chr14:34986946-34987378 > temp.bam
parseBam temp.bam run1_Injected_FoxA 34987141 34987183; rm temp.bam
mv frameshift_summary_run1_Injected_FoxA ../../analysis/real_dataset/data/amplicondivider/run1_Injected_FoxA.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_Gria3a_merged.bam chr5:25097276-25097708 > temp.bam
parseBam temp.bam run1_Uninjected_Gria3a 25097471 25097513; rm temp.bam
mv frameshift_summary_run1_Uninjected_Gria3a ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_Gria3a.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_Gria3a_merged.bam chr5:25097276-25097708 > temp.bam
parseBam temp.bam run1_Injected_Gria3a 25097471 25097513; rm temp.bam
mv frameshift_summary_run1_Injected_Gria3a ../../analysis/real_dataset/data/amplicondivider/run1_Injected_Gria3a.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_Mll_merged.bam chr15:22773279-22773711 > temp.bam
parseBam temp.bam run1_Uninjected_Mll 22773474 22773516; rm temp.bam
mv frameshift_summary_run1_Uninjected_Mll ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_Mll.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_Mll_merged.bam chr15:22773279-22773711 > temp.bam
parseBam temp.bam run1_Injected_Mll 22773474 22773516; rm temp.bam
mv frameshift_summary_run1_Injected_Mll ../../analysis/real_dataset/data/amplicondivider/run1_Injected_Mll.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC10_gli1_nc_merged.bam chr1:30762655-30763087 > temp.bam
parseBam temp.bam run1_Uninjected_NC10_gli1_nc 30762850 30762892; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC10_gli1_nc ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC10_gli1_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC10_gli1_nc_merged.bam chr1:30762655-30763087 > temp.bam
parseBam temp.bam run1_Injected_NC10_gli1_nc 30762850 30762892; rm temp.bam
mv frameshift_summary_run1_Injected_NC10_gli1_nc ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC10_gli1_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC11_foxA2_nc_merged.bam chr17:42389777-42390209 > temp.bam
parseBam temp.bam run1_Injected_NC11_foxA2_nc 42389972 42390014; rm temp.bam
mv frameshift_summary_run1_Injected_NC11_foxA2_nc ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC11_foxA2_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC11_foxA2_nc_merged.bam chr17:42389777-42390209 > temp.bam
parseBam temp.bam run1_Uninjected_NC11_foxA2_nc 42389972 42390014; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC11_foxA2_nc ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC11_foxA2_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC12a_setd1ba_nc_merged.bam chr10:43351119-43351551 > temp.bam
parseBam temp.bam run1_Uninjected_NC12a_setd1ba_nc 43351314 43351356; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC12a_setd1ba_nc ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC12a_setd1ba_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC12a_setd1ba_nc_merged.bam chr10:43351119-43351551 > temp.bam
parseBam temp.bam run1_Injected_NC12a_setd1ba_nc 43351314 43351356; rm temp.bam
mv frameshift_summary_run1_Injected_NC12a_setd1ba_nc ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC12a_setd1ba_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC12b_setd1ba_nc_merged.bam chr10:43351072-43351504 > temp.bam
parseBam temp.bam run1_Uninjected_NC12b_setd1ba_nc 43351267 43351309; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC12b_setd1ba_nc ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC12b_setd1ba_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC12b_setd1ba_nc_merged.bam chr10:43351072-43351504 > temp.bam
parseBam temp.bam run1_Injected_NC12b_setd1ba_nc 43351267 43351309; rm temp.bam
mv frameshift_summary_run1_Injected_NC12b_setd1ba_nc ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC12b_setd1ba_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC16_hoxC1a_6a_merged.bam chr23:36328359-36328791 > temp.bam
parseBam temp.bam run1_Uninjected_NC16_hoxC1a_6a 36328554 36328596; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC16_hoxC1a_6a ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC16_hoxC1a_6a.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC16_hoxC1a_6a_merged.bam chr23:36328359-36328791 > temp.bam
parseBam temp.bam run1_Injected_NC16_hoxC1a_6a 36328554 36328596; rm temp.bam
mv frameshift_summary_run1_Injected_NC16_hoxC1a_6a ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC16_hoxC1a_6a.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC18_nr2f1a_nc_merged.bam chr5:51525672-51526104 > temp.bam
parseBam temp.bam run1_Injected_NC18_nr2f1a_nc 51525867 51525909; rm temp.bam
mv frameshift_summary_run1_Injected_NC18_nr2f1a_nc ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC18_nr2f1a_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC18_nr2f1a_nc_merged.bam chr5:51525672-51526104 > temp.bam
parseBam temp.bam run1_Uninjected_NC18_nr2f1a_nc 51525867 51525909; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC18_nr2f1a_nc ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC18_nr2f1a_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC19_nr2f2_nc_merged.bam chr18:23661449-23661881 > temp.bam
parseBam temp.bam run1_Injected_NC19_nr2f2_nc 23661644 23661686; rm temp.bam
mv frameshift_summary_run1_Injected_NC19_nr2f2_nc ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC19_nr2f2_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC19_nr2f2_nc_merged.bam chr18:23661449-23661881 > temp.bam
parseBam temp.bam run1_Uninjected_NC19_nr2f2_nc 23661644 23661686; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC19_nr2f2_nc ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC19_nr2f2_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC1a_megamind_merged.bam chr17:22518533-22518965 > temp.bam
parseBam temp.bam run1_Uninjected_NC1a_megamind 22518728 22518770; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC1a_megamind ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC1a_megamind.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC1a_megamind_merged.bam chr17:22518533-22518965 > temp.bam
parseBam temp.bam run1_Injected_NC1a_megamind 22518728 22518770; rm temp.bam
mv frameshift_summary_run1_Injected_NC1a_megamind ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC1a_megamind.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC1b_megamind_merged.bam chr17:22519218-22519650 > temp.bam
parseBam temp.bam run1_Uninjected_NC1b_megamind 22519413 22519455; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC1b_megamind ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC1b_megamind.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC1b_megamind_merged.bam chr17:22519218-22519650 > temp.bam
parseBam temp.bam run1_Injected_NC1b_megamind 22519413 22519455; rm temp.bam
mv frameshift_summary_run1_Injected_NC1b_megamind ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC1b_megamind.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC1c_megamind_conservedsite_merged.bam chr17:22517824-22518256 > temp.bam
parseBam temp.bam run1_Uninjected_NC1c_megamind_conservedsite 22518019 22518061; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC1c_megamind_conservedsite ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC1c_megamind_conservedsite.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC1c_megamind_conservedsite_merged.bam chr17:22517824-22518256 > temp.bam
parseBam temp.bam run1_Injected_NC1c_megamind_conservedsite 22518019 22518061; rm temp.bam
mv frameshift_summary_run1_Injected_NC1c_megamind_conservedsite ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC1c_megamind_conservedsite.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC20_mmd2_snoRNA_nc_merged.bam chr1:6993658-6994090 > temp.bam
parseBam temp.bam run1_Uninjected_NC20_mmd2_snoRNA_nc 6993853 6993895; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC20_mmd2_snoRNA_nc ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC20_mmd2_snoRNA_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC20_mmd2_snoRNA_nc_merged.bam chr1:6993658-6994090 > temp.bam
parseBam temp.bam run1_Injected_NC20_mmd2_snoRNA_nc 6993853 6993895; rm temp.bam
mv frameshift_summary_run1_Injected_NC20_mmd2_snoRNA_nc ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC20_mmd2_snoRNA_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC26_sox9a_nc_merged.bam chr12:1940046-1940478 > temp.bam
parseBam temp.bam run1_Uninjected_NC26_sox9a_nc 1940241 1940283; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC26_sox9a_nc ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC26_sox9a_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC26_sox9a_nc_merged.bam chr12:1940046-1940478 > temp.bam
parseBam temp.bam run1_Injected_NC26_sox9a_nc 1940241 1940283; rm temp.bam
mv frameshift_summary_run1_Injected_NC26_sox9a_nc ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC26_sox9a_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC27_sox9b_nc_merged.bam chr3:63095188-63095620 > temp.bam
parseBam temp.bam run1_Uninjected_NC27_sox9b_nc 63095383 63095425; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC27_sox9b_nc ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC27_sox9b_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC27_sox9b_nc_merged.bam chr3:63095188-63095620 > temp.bam
parseBam temp.bam run1_Injected_NC27_sox9b_nc 63095383 63095425; rm temp.bam
mv frameshift_summary_run1_Injected_NC27_sox9b_nc ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC27_sox9b_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC2b_chd2_linc_merged.bam chr18:24779978-24780410 > temp.bam
parseBam temp.bam run1_Injected_NC2b_chd2_linc 24780173 24780215; rm temp.bam
mv frameshift_summary_run1_Injected_NC2b_chd2_linc ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC2b_chd2_linc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC2b_chd2_linc_merged.bam chr18:24779978-24780410 > temp.bam
parseBam temp.bam run1_Uninjected_NC2b_chd2_linc 24780173 24780215; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC2b_chd2_linc ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC2b_chd2_linc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC31_magib_nc_merged.bam chr11:19400479-19400911 > temp.bam
parseBam temp.bam run1_Injected_NC31_magib_nc 19400674 19400716; rm temp.bam
mv frameshift_summary_run1_Injected_NC31_magib_nc ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC31_magib_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC31_magib_nc_merged.bam chr11:19400479-19400911 > temp.bam
parseBam temp.bam run1_Uninjected_NC31_magib_nc 19400674 19400716; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC31_magib_nc ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC31_magib_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC5a_polycistronic_merged.bam chr22:8821499-8821931 > temp.bam
parseBam temp.bam run1_Injected_NC5a_polycistronic 8821694 8821736; rm temp.bam
mv frameshift_summary_run1_Injected_NC5a_polycistronic ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC5a_polycistronic.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC5a_polycistronic_merged.bam chr22:8821499-8821931 > temp.bam
parseBam temp.bam run1_Uninjected_NC5a_polycistronic 8821694 8821736; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC5a_polycistronic ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC5a_polycistronic.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC6_F2R2_MALAT_merged.bam chr14:48573360-48573792 > temp.bam
parseBam temp.bam run1_Uninjected_NC6_F2R2_MALAT 48573555 48573597; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC6_F2R2_MALAT ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC6_F2R2_MALAT.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC6_F2R2_MALAT_merged.bam chr14:48573360-48573792 > temp.bam
parseBam temp.bam run1_Injected_NC6_F2R2_MALAT 48573555 48573597; rm temp.bam
mv frameshift_summary_run1_Injected_NC6_F2R2_MALAT ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC6_F2R2_MALAT.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC7_cyrano_merged.bam chr13:33490962-33491394 > temp.bam
parseBam temp.bam run1_Uninjected_NC7_cyrano 33491157 33491199; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC7_cyrano ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC7_cyrano.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC7_cyrano_merged.bam chr13:33490962-33491394 > temp.bam
parseBam temp.bam run1_Injected_NC7_cyrano 33491157 33491199; rm temp.bam
mv frameshift_summary_run1_Injected_NC7_cyrano ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC7_cyrano.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC8a_pitx2Elovl6_nc_merged.bam chr14:37492992-37493424 > temp.bam
parseBam temp.bam run1_Uninjected_NC8a_pitx2Elovl6_nc 37493187 37493229; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC8a_pitx2Elovl6_nc ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC8a_pitx2Elovl6_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC8a_pitx2Elovl6_nc_merged.bam chr14:37492992-37493424 > temp.bam
parseBam temp.bam run1_Injected_NC8a_pitx2Elovl6_nc 37493187 37493229; rm temp.bam
mv frameshift_summary_run1_Injected_NC8a_pitx2Elovl6_nc ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC8a_pitx2Elovl6_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NC8b_pitx2Elovl6_nc_merged.bam chr14:37492945-37493377 > temp.bam
parseBam temp.bam run1_Uninjected_NC8b_pitx2Elovl6_nc 37493140 37493182; rm temp.bam
mv frameshift_summary_run1_Uninjected_NC8b_pitx2Elovl6_nc ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NC8b_pitx2Elovl6_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NC8b_pitx2Elovl6_nc_merged.bam chr14:37492945-37493377 > temp.bam
parseBam temp.bam run1_Injected_NC8b_pitx2Elovl6_nc 37493140 37493182; rm temp.bam
mv frameshift_summary_run1_Injected_NC8b_pitx2Elovl6_nc ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NC8b_pitx2Elovl6_nc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP001_NP006_merged.bam chr12:30518769-30519201 > temp.bam
parseBam temp.bam run1_Uninjected_NP001_NP006 30518964 30519006; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP001_NP006 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP001_NP006.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP001_NP006_merged.bam chr12:30518769-30519201 > temp.bam
parseBam temp.bam run1_Injected_NP001_NP006 30518964 30519006; rm temp.bam
mv frameshift_summary_run1_Injected_NP001_NP006 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP001_NP006.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP003_merged.bam chr10:809132-809564 > temp.bam
parseBam temp.bam run1_Uninjected_NP003 809327 809369; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP003 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP003.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP003_merged.bam chr10:809132-809564 > temp.bam
parseBam temp.bam run1_Injected_NP003 809327 809369; rm temp.bam
mv frameshift_summary_run1_Injected_NP003 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP003.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP004_merged.bam chr13:2388620-2389052 > temp.bam
parseBam temp.bam run1_Uninjected_NP004 2388815 2388857; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP004 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP004.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP004_merged.bam chr13:2388620-2389052 > temp.bam
parseBam temp.bam run1_Injected_NP004 2388815 2388857; rm temp.bam
mv frameshift_summary_run1_Injected_NP004 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP004.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP005_merged.bam chr16:22249480-22249912 > temp.bam
parseBam temp.bam run1_Uninjected_NP005 22249675 22249717; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP005 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP005.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP005_merged.bam chr16:22249480-22249912 > temp.bam
parseBam temp.bam run1_Injected_NP005 22249675 22249717; rm temp.bam
mv frameshift_summary_run1_Injected_NP005 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP005.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP007_merged.bam chr2:7359283-7359715 > temp.bam
parseBam temp.bam run1_Uninjected_NP007 7359478 7359520; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP007 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP007.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP007_merged.bam chr2:7359283-7359715 > temp.bam
parseBam temp.bam run1_Injected_NP007 7359478 7359520; rm temp.bam
mv frameshift_summary_run1_Injected_NP007 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP007.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP008_merged.bam chr7:52221184-52221616 > temp.bam
parseBam temp.bam run1_Injected_NP008 52221379 52221421; rm temp.bam
mv frameshift_summary_run1_Injected_NP008 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP008.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP008_merged.bam chr7:52221184-52221616 > temp.bam
parseBam temp.bam run1_Uninjected_NP008 52221379 52221421; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP008 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP008.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP009_merged.bam chr11:28955872-28956304 > temp.bam
parseBam temp.bam run1_Uninjected_NP009 28956067 28956109; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP009 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP009.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP009_merged.bam chr11:28955872-28956304 > temp.bam
parseBam temp.bam run1_Injected_NP009 28956067 28956109; rm temp.bam
mv frameshift_summary_run1_Injected_NP009 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP009.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP010_merged.bam chr16:25580819-25581251 > temp.bam
parseBam temp.bam run1_Uninjected_NP010 25581014 25581056; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP010 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP010.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP010_merged.bam chr16:25580819-25581251 > temp.bam
parseBam temp.bam run1_Injected_NP010 25581014 25581056; rm temp.bam
mv frameshift_summary_run1_Injected_NP010 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP010.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP011_merged.bam chr22:23495806-23496238 > temp.bam
parseBam temp.bam run1_Uninjected_NP011 23496001 23496043; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP011 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP011.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP011_merged.bam chr22:23495806-23496238 > temp.bam
parseBam temp.bam run1_Injected_NP011 23496001 23496043; rm temp.bam
mv frameshift_summary_run1_Injected_NP011 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP011.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP012_merged.bam chr2:7136302-7136734 > temp.bam
parseBam temp.bam run1_Uninjected_NP012 7136497 7136539; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP012 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP012.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP012_merged.bam chr2:7136302-7136734 > temp.bam
parseBam temp.bam run1_Injected_NP012 7136497 7136539; rm temp.bam
mv frameshift_summary_run1_Injected_NP012 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP012.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP013_merged.bam chr3:28977958-28978390 > temp.bam
parseBam temp.bam run1_Injected_NP013 28978153 28978195; rm temp.bam
mv frameshift_summary_run1_Injected_NP013 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP013.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP013_merged.bam chr3:28977958-28978390 > temp.bam
parseBam temp.bam run1_Uninjected_NP013 28978153 28978195; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP013 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP013.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP014_merged.bam chr8:33255094-33255526 > temp.bam
parseBam temp.bam run1_Uninjected_NP014 33255289 33255331; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP014 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP014.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP014_merged.bam chr8:33255094-33255526 > temp.bam
parseBam temp.bam run1_Injected_NP014 33255289 33255331; rm temp.bam
mv frameshift_summary_run1_Injected_NP014 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP014.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP015_merged.bam chr16:25110965-25111397 > temp.bam
parseBam temp.bam run1_Uninjected_NP015 25111160 25111202; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP015 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP015.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP015_merged.bam chr16:25110965-25111397 > temp.bam
parseBam temp.bam run1_Injected_NP015 25111160 25111202; rm temp.bam
mv frameshift_summary_run1_Injected_NP015 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP015.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP016_merged.bam chr16:33931342-33931774 > temp.bam
parseBam temp.bam run1_Uninjected_NP016 33931537 33931579; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP016 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP016.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP016_merged.bam chr16:33931342-33931774 > temp.bam
parseBam temp.bam run1_Injected_NP016 33931537 33931579; rm temp.bam
mv frameshift_summary_run1_Injected_NP016 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP016.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP017_merged.bam chr1:11431570-11432002 > temp.bam
parseBam temp.bam run1_Uninjected_NP017 11431765 11431807; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP017 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP017.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP017_merged.bam chr1:11431570-11432002 > temp.bam
parseBam temp.bam run1_Injected_NP017 11431765 11431807; rm temp.bam
mv frameshift_summary_run1_Injected_NP017 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP017.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP018_merged.bam chr12:11392253-11392685 > temp.bam
parseBam temp.bam run1_Injected_NP018 11392448 11392490; rm temp.bam
mv frameshift_summary_run1_Injected_NP018 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP018.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP018_merged.bam chr12:11392253-11392685 > temp.bam
parseBam temp.bam run1_Uninjected_NP018 11392448 11392490; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP018 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP018.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP019_merged.bam chr6:19543925-19544357 > temp.bam
parseBam temp.bam run1_Uninjected_NP019 19544120 19544162; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP019 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP019.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP019_merged.bam chr6:19543925-19544357 > temp.bam
parseBam temp.bam run1_Injected_NP019 19544120 19544162; rm temp.bam
mv frameshift_summary_run1_Injected_NP019 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP019.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_NP020_merged.bam chr7:25658264-25658696 > temp.bam
parseBam temp.bam run1_Uninjected_NP020 25658459 25658501; rm temp.bam
mv frameshift_summary_run1_Uninjected_NP020 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_NP020.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_NP020_merged.bam chr7:25658264-25658696 > temp.bam
parseBam temp.bam run1_Injected_NP020 25658459 25658501; rm temp.bam
mv frameshift_summary_run1_Injected_NP020 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_NP020.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP1_merged.bam chr4:15853062-15853494 > temp.bam
parseBam temp.bam run1_Uninjected_SP1 15853257 15853299; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP1 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP1.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP1_merged.bam chr4:15853062-15853494 > temp.bam
parseBam temp.bam run1_Injected_SP1 15853257 15853299; rm temp.bam
mv frameshift_summary_run1_Injected_SP1 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP1.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP10_merged.bam chr3:22583687-22584119 > temp.bam
parseBam temp.bam run1_Uninjected_SP10 22583882 22583924; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP10 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP10.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP10_merged.bam chr3:22583687-22584119 > temp.bam
parseBam temp.bam run1_Injected_SP10 22583882 22583924; rm temp.bam
mv frameshift_summary_run1_Injected_SP10 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP10.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP12_merged.bam chr16:26212212-26212644 > temp.bam
parseBam temp.bam run1_Uninjected_SP12 26212407 26212449; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP12 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP12.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP12_merged.bam chr16:26212212-26212644 > temp.bam
parseBam temp.bam run1_Injected_SP12 26212407 26212449; rm temp.bam
mv frameshift_summary_run1_Injected_SP12 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP12.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP13_merged.bam chr5:4457366-4457798 > temp.bam
parseBam temp.bam run1_Injected_SP13 4457561 4457603; rm temp.bam
mv frameshift_summary_run1_Injected_SP13 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP13.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP13_merged.bam chr5:4457366-4457798 > temp.bam
parseBam temp.bam run1_Uninjected_SP13 4457561 4457603; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP13 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP13.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP14_merged.bam chr16:25580819-25581251 > temp.bam
parseBam temp.bam run1_Uninjected_SP14 25581014 25581056; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP14 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP14.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP14_merged.bam chr16:25580819-25581251 > temp.bam
parseBam temp.bam run1_Injected_SP14 25581014 25581056; rm temp.bam
mv frameshift_summary_run1_Injected_SP14 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP14.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP15_merged.bam chr2:48802101-48802533 > temp.bam
parseBam temp.bam run1_Injected_SP15 48802296 48802338; rm temp.bam
mv frameshift_summary_run1_Injected_SP15 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP15.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP15_merged.bam chr2:48802101-48802533 > temp.bam
parseBam temp.bam run1_Uninjected_SP15 48802296 48802338; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP15 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP15.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP16_merged.bam chr16:27335393-27335825 > temp.bam
parseBam temp.bam run1_Uninjected_SP16 27335588 27335630; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP16 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP16.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP16_merged.bam chr16:27335393-27335825 > temp.bam
parseBam temp.bam run1_Injected_SP16 27335588 27335630; rm temp.bam
mv frameshift_summary_run1_Injected_SP16 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP16.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP17_merged.bam chr22:375500-375932 > temp.bam
parseBam temp.bam run1_Injected_SP17 375695 375737; rm temp.bam
mv frameshift_summary_run1_Injected_SP17 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP17.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP17_merged.bam chr22:375500-375932 > temp.bam
parseBam temp.bam run1_Uninjected_SP17 375695 375737; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP17 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP17.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP18_merged.bam chr24:9785064-9785496 > temp.bam
parseBam temp.bam run1_Uninjected_SP18 9785259 9785301; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP18 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP18.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP18_merged.bam chr24:9785064-9785496 > temp.bam
parseBam temp.bam run1_Injected_SP18 9785259 9785301; rm temp.bam
mv frameshift_summary_run1_Injected_SP18 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP18.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP2_merged.bam chr9:3033508-3033940 > temp.bam
parseBam temp.bam run1_Uninjected_SP2 3033703 3033745; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP2 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP2_merged.bam chr9:3033508-3033940 > temp.bam
parseBam temp.bam run1_Injected_SP2 3033703 3033745; rm temp.bam
mv frameshift_summary_run1_Injected_SP2 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP3.SP11_updated_merged.bam chr13:43197816-43198248 > temp.bam
parseBam temp.bam run1_Uninjected_SP3.SP11_updated 43198011 43198053; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP3.SP11_updated ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP3.SP11_updated.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP3.SP11_updated_merged.bam chr13:43197816-43198248 > temp.bam
parseBam temp.bam run1_Injected_SP3.SP11_updated 43198011 43198053; rm temp.bam
mv frameshift_summary_run1_Injected_SP3.SP11_updated ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP3.SP11_updated.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP4_merged.bam chr19:16829908-16830340 > temp.bam
parseBam temp.bam run1_Uninjected_SP4 16830103 16830145; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP4 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP4.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP4_merged.bam chr19:16829908-16830340 > temp.bam
parseBam temp.bam run1_Injected_SP4 16830103 16830145; rm temp.bam
mv frameshift_summary_run1_Injected_SP4 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP4.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP5_merged.bam chr19:16840933-16841365 > temp.bam
parseBam temp.bam run1_Uninjected_SP5 16841128 16841170; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP5 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP5.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP5_merged.bam chr19:16840933-16841365 > temp.bam
parseBam temp.bam run1_Injected_SP5 16841128 16841170; rm temp.bam
mv frameshift_summary_run1_Injected_SP5 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP5.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP6_merged.bam chr16:26224221-26224653 > temp.bam
parseBam temp.bam run1_Uninjected_SP6 26224416 26224458; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP6 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP6.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP6_merged.bam chr16:26224221-26224653 > temp.bam
parseBam temp.bam run1_Injected_SP6 26224416 26224458; rm temp.bam
mv frameshift_summary_run1_Injected_SP6 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP6.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP7_merged.bam chr2:7359283-7359715 > temp.bam
parseBam temp.bam run1_Injected_SP7 7359478 7359520; rm temp.bam
mv frameshift_summary_run1_Injected_SP7 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP7.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP7_merged.bam chr2:7359283-7359715 > temp.bam
parseBam temp.bam run1_Uninjected_SP7 7359478 7359520; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP7 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP7.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP8_updated2_merged.bam chr22:26325709-26326141 > temp.bam
parseBam temp.bam run1_Uninjected_SP8_updated2 26325904 26325946; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP8_updated2 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP8_updated2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP8_updated2_merged.bam chr22:26325709-26326141 > temp.bam
parseBam temp.bam run1_Injected_SP8_updated2 26325904 26325946; rm temp.bam
mv frameshift_summary_run1_Injected_SP8_updated2 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP8_updated2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_SP9_merged.bam chr18:49677219-49677651 > temp.bam
parseBam temp.bam run1_Uninjected_SP9 49677414 49677456; rm temp.bam
mv frameshift_summary_run1_Uninjected_SP9 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_SP9.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_SP9_merged.bam chr18:49677219-49677651 > temp.bam
parseBam temp.bam run1_Injected_SP9 49677414 49677456; rm temp.bam
mv frameshift_summary_run1_Injected_SP9 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_SP9.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_Trpv1_merged.bam chr5:43763403-43763835 > temp.bam
parseBam temp.bam run1_Uninjected_Trpv1 43763598 43763640; rm temp.bam
mv frameshift_summary_run1_Uninjected_Trpv1 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_Trpv1.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_Trpv1_merged.bam chr5:43763403-43763835 > temp.bam
parseBam temp.bam run1_Injected_Trpv1 43763598 43763640; rm temp.bam
mv frameshift_summary_run1_Injected_Trpv1 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_Trpv1.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_Utx1_merged.bam chr6:59580489-59580921 > temp.bam
parseBam temp.bam run1_Uninjected_Utx1 59580684 59580726; rm temp.bam
mv frameshift_summary_run1_Uninjected_Utx1 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_Utx1.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_Utx1_merged.bam chr6:59580489-59580921 > temp.bam
parseBam temp.bam run1_Injected_Utx1 59580684 59580726; rm temp.bam
mv frameshift_summary_run1_Injected_Utx1 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_Utx1.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_aim1b_merged.bam chr4:642727-643159 > temp.bam
parseBam temp.bam run1_Uninjected_aim1b 642922 642964; rm temp.bam
mv frameshift_summary_run1_Uninjected_aim1b ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_aim1b.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_aim1b_merged.bam chr4:642727-643159 > temp.bam
parseBam temp.bam run1_Injected_aim1b 642922 642964; rm temp.bam
mv frameshift_summary_run1_Injected_aim1b ../../analysis/real_dataset/data/amplicondivider/run1_Injected_aim1b.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_apln_merged.bam chr14:34698133-34698565 > temp.bam
parseBam temp.bam run1_Injected_apln 34698328 34698370; rm temp.bam
mv frameshift_summary_run1_Injected_apln ../../analysis/real_dataset/data/amplicondivider/run1_Injected_apln.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_apln_merged.bam chr14:34698133-34698565 > temp.bam
parseBam temp.bam run1_Uninjected_apln 34698328 34698370; rm temp.bam
mv frameshift_summary_run1_Uninjected_apln ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_apln.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_aplnrA_merged.bam chr8:42370194-42370626 > temp.bam
parseBam temp.bam run1_Uninjected_aplnrA 42370389 42370431; rm temp.bam
mv frameshift_summary_run1_Uninjected_aplnrA ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_aplnrA.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_aplnrA_merged.bam chr8:42370194-42370626 > temp.bam
parseBam temp.bam run1_Injected_aplnrA 42370389 42370431; rm temp.bam
mv frameshift_summary_run1_Injected_aplnrA ../../analysis/real_dataset/data/amplicondivider/run1_Injected_aplnrA.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_aplnrB_merged.bam chr10:8719516-8719948 > temp.bam
parseBam temp.bam run1_Uninjected_aplnrB 8719711 8719753; rm temp.bam
mv frameshift_summary_run1_Uninjected_aplnrB ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_aplnrB.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_aplnrB_merged.bam chr10:8719516-8719948 > temp.bam
parseBam temp.bam run1_Injected_aplnrB 8719711 8719753; rm temp.bam
mv frameshift_summary_run1_Injected_aplnrB ../../analysis/real_dataset/data/amplicondivider/run1_Injected_aplnrB.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_atp1a1_merged.bam chr1:1474016-1474448 > temp.bam
parseBam temp.bam run1_Uninjected_atp1a1 1474211 1474253; rm temp.bam
mv frameshift_summary_run1_Uninjected_atp1a1 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_atp1a1.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_atp1a1_merged.bam chr1:1474016-1474448 > temp.bam
parseBam temp.bam run1_Injected_atp1a1 1474211 1474253; rm temp.bam
mv frameshift_summary_run1_Injected_atp1a1 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_atp1a1.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_bag2_merged.bam chr13:1280745-1281177 > temp.bam
parseBam temp.bam run1_Injected_bag2 1280940 1280982; rm temp.bam
mv frameshift_summary_run1_Injected_bag2 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_bag2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_bag2_merged.bam chr13:1280745-1281177 > temp.bam
parseBam temp.bam run1_Uninjected_bag2 1280940 1280982; rm temp.bam
mv frameshift_summary_run1_Uninjected_bag2 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_bag2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_cartb_merged.bam chr7:52221184-52221616 > temp.bam
parseBam temp.bam run1_Uninjected_cartb 52221379 52221421; rm temp.bam
mv frameshift_summary_run1_Uninjected_cartb ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_cartb.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_cartb_merged.bam chr7:52221184-52221616 > temp.bam
parseBam temp.bam run1_Injected_cartb 52221379 52221421; rm temp.bam
mv frameshift_summary_run1_Injected_cartb ../../analysis/real_dataset/data/amplicondivider/run1_Injected_cartb.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_cartc_merged.bam chr19:43764698-43765130 > temp.bam
parseBam temp.bam run1_Injected_cartc 43764893 43764935; rm temp.bam
mv frameshift_summary_run1_Injected_cartc ../../analysis/real_dataset/data/amplicondivider/run1_Injected_cartc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_cartc_merged.bam chr19:43764698-43765130 > temp.bam
parseBam temp.bam run1_Uninjected_cartc 43764893 43764935; rm temp.bam
mv frameshift_summary_run1_Uninjected_cartc ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_cartc.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_cartd_merged.bam chr22:39718535-39718967 > temp.bam
parseBam temp.bam run1_Injected_cartd 39718730 39718772; rm temp.bam
mv frameshift_summary_run1_Injected_cartd ../../analysis/real_dataset/data/amplicondivider/run1_Injected_cartd.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_cartd_merged.bam chr22:39718535-39718967 > temp.bam
parseBam temp.bam run1_Uninjected_cartd 39718730 39718772; rm temp.bam
mv frameshift_summary_run1_Uninjected_cartd ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_cartd.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_carte_merged.bam chr25:19933128-19933560 > temp.bam
parseBam temp.bam run1_Uninjected_carte 19933323 19933365; rm temp.bam
mv frameshift_summary_run1_Uninjected_carte ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_carte.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_carte_merged.bam chr25:19933128-19933560 > temp.bam
parseBam temp.bam run1_Injected_carte 19933323 19933365; rm temp.bam
mv frameshift_summary_run1_Injected_carte ../../analysis/real_dataset/data/amplicondivider/run1_Injected_carte.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_col5al_merged.bam chr21:6527220-6527652 > temp.bam
parseBam temp.bam run1_Uninjected_col5al 6527415 6527457; rm temp.bam
mv frameshift_summary_run1_Uninjected_col5al ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_col5al.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_col5al_merged.bam chr21:6527220-6527652 > temp.bam
parseBam temp.bam run1_Injected_col5al 6527415 6527457; rm temp.bam
mv frameshift_summary_run1_Injected_col5al ../../analysis/real_dataset/data/amplicondivider/run1_Injected_col5al.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_ctgfa_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run1_Uninjected_ctgfa 25370845 25370887; rm temp.bam
mv frameshift_summary_run1_Uninjected_ctgfa ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_ctgfa.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_ctgfa_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run1_Injected_ctgfa 25370845 25370887; rm temp.bam
mv frameshift_summary_run1_Injected_ctgfa ../../analysis/real_dataset/data/amplicondivider/run1_Injected_ctgfa.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_cx43.4_merged.bam chr9:47610581-47611013 > temp.bam
parseBam temp.bam run1_Injected_cx43.4 47610776 47610818; rm temp.bam
mv frameshift_summary_run1_Injected_cx43.4 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_cx43.4.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_cx43.4_merged.bam chr9:47610581-47611013 > temp.bam
parseBam temp.bam run1_Uninjected_cx43.4 47610776 47610818; rm temp.bam
mv frameshift_summary_run1_Uninjected_cx43.4 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_cx43.4.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_dand5_merged.bam chr1:52321028-52321460 > temp.bam
parseBam temp.bam run1_Injected_dand5 52321223 52321265; rm temp.bam
mv frameshift_summary_run1_Injected_dand5 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_dand5.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_dand5_merged.bam chr1:52321028-52321460 > temp.bam
parseBam temp.bam run1_Uninjected_dand5 52321223 52321265; rm temp.bam
mv frameshift_summary_run1_Uninjected_dand5 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_dand5.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_eed_merged.bam chr1:585918-586350 > temp.bam
parseBam temp.bam run1_Injected_eed 586113 586155; rm temp.bam
mv frameshift_summary_run1_Injected_eed ../../analysis/real_dataset/data/amplicondivider/run1_Injected_eed.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_eed_merged.bam chr1:585918-586350 > temp.bam
parseBam temp.bam run1_Uninjected_eed 586113 586155; rm temp.bam
mv frameshift_summary_run1_Uninjected_eed ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_eed.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_elovl6_merged.bam chr14:37483846-37484278 > temp.bam
parseBam temp.bam run1_Uninjected_elovl6 37484041 37484083; rm temp.bam
mv frameshift_summary_run1_Uninjected_elovl6 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_elovl6.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_elovl6_merged.bam chr14:37483846-37484278 > temp.bam
parseBam temp.bam run1_Injected_elovl6 37484041 37484083; rm temp.bam
mv frameshift_summary_run1_Injected_elovl6 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_elovl6.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_eml2_merged.bam chr15:28251492-28251924 > temp.bam
parseBam temp.bam run1_Uninjected_eml2 28251687 28251729; rm temp.bam
mv frameshift_summary_run1_Uninjected_eml2 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_eml2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_eml2_merged.bam chr15:28251492-28251924 > temp.bam
parseBam temp.bam run1_Injected_eml2 28251687 28251729; rm temp.bam
mv frameshift_summary_run1_Injected_eml2 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_eml2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_eomesb_merged.bam chr16:58707958-58708390 > temp.bam
parseBam temp.bam run1_Uninjected_eomesb 58708153 58708195; rm temp.bam
mv frameshift_summary_run1_Uninjected_eomesb ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_eomesb.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_eomesb_merged.bam chr16:58707958-58708390 > temp.bam
parseBam temp.bam run1_Injected_eomesb 58708153 58708195; rm temp.bam
mv frameshift_summary_run1_Injected_eomesb ../../analysis/real_dataset/data/amplicondivider/run1_Injected_eomesb.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_ezh2.2_merged.bam chr24:17898756-17899188 > temp.bam
parseBam temp.bam run1_Injected_ezh2.2 17898951 17898993; rm temp.bam
mv frameshift_summary_run1_Injected_ezh2.2 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_ezh2.2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_ezh2.2_merged.bam chr24:17898756-17899188 > temp.bam
parseBam temp.bam run1_Uninjected_ezh2.2 17898951 17898993; rm temp.bam
mv frameshift_summary_run1_Uninjected_ezh2.2 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_ezh2.2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_fgf13b_merged.bam chr10:27358709-27359141 > temp.bam
parseBam temp.bam run1_Uninjected_fgf13b 27358904 27358946; rm temp.bam
mv frameshift_summary_run1_Uninjected_fgf13b ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_fgf13b.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_fgf13b_merged.bam chr10:27358709-27359141 > temp.bam
parseBam temp.bam run1_Injected_fgf13b 27358904 27358946; rm temp.bam
mv frameshift_summary_run1_Injected_fgf13b ../../analysis/real_dataset/data/amplicondivider/run1_Injected_fgf13b.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_h2afy_merged.bam chr21:44400416-44400848 > temp.bam
parseBam temp.bam run1_Injected_h2afy 44400611 44400653; rm temp.bam
mv frameshift_summary_run1_Injected_h2afy ../../analysis/real_dataset/data/amplicondivider/run1_Injected_h2afy.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_h2afy_merged.bam chr21:44400416-44400848 > temp.bam
parseBam temp.bam run1_Uninjected_h2afy 44400611 44400653; rm temp.bam
mv frameshift_summary_run1_Uninjected_h2afy ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_h2afy.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_h2afy2_merged.bam chr13:6341285-6341717 > temp.bam
parseBam temp.bam run1_Uninjected_h2afy2 6341480 6341522; rm temp.bam
mv frameshift_summary_run1_Uninjected_h2afy2 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_h2afy2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_h2afy2_merged.bam chr13:6341285-6341717 > temp.bam
parseBam temp.bam run1_Injected_h2afy2 6341480 6341522; rm temp.bam
mv frameshift_summary_run1_Injected_h2afy2 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_h2afy2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_kdm6ba_556678_merged.bam chr7:22808270-22808702 > temp.bam
parseBam temp.bam run1_Injected_kdm6ba_556678 22808465 22808507; rm temp.bam
mv frameshift_summary_run1_Injected_kdm6ba_556678 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_kdm6ba_556678.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_kdm6ba_556678_merged.bam chr7:22808270-22808702 > temp.bam
parseBam temp.bam run1_Uninjected_kdm6ba_556678 22808465 22808507; rm temp.bam
mv frameshift_summary_run1_Uninjected_kdm6ba_556678 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_kdm6ba_556678.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_kdm6bb_563644_merged.bam chr10:22947777-22948209 > temp.bam
parseBam temp.bam run1_Uninjected_kdm6bb_563644 22947972 22948014; rm temp.bam
mv frameshift_summary_run1_Uninjected_kdm6bb_563644 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_kdm6bb_563644.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_kdm6bb_563644_merged.bam chr10:22947777-22948209 > temp.bam
parseBam temp.bam run1_Injected_kdm6bb_563644 22947972 22948014; rm temp.bam
mv frameshift_summary_run1_Injected_kdm6bb_563644 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_kdm6bb_563644.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_klhl29_merged.bam chr20:45185130-45185562 > temp.bam
parseBam temp.bam run1_Injected_klhl29 45185325 45185367; rm temp.bam
mv frameshift_summary_run1_Injected_klhl29 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_klhl29.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_klhl29_merged.bam chr20:45185130-45185562 > temp.bam
parseBam temp.bam run1_Uninjected_klhl29 45185325 45185367; rm temp.bam
mv frameshift_summary_run1_Uninjected_klhl29 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_klhl29.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_lgi2a_updated_merged.bam chr7:75113080-75113512 > temp.bam
parseBam temp.bam run1_Uninjected_lgi2a_updated 75113275 75113317; rm temp.bam
mv frameshift_summary_run1_Uninjected_lgi2a_updated ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_lgi2a_updated.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_lgi2a_updated_merged.bam chr7:75113080-75113512 > temp.bam
parseBam temp.bam run1_Injected_lgi2a_updated 75113275 75113317; rm temp.bam
mv frameshift_summary_run1_Injected_lgi2a_updated ../../analysis/real_dataset/data/amplicondivider/run1_Injected_lgi2a_updated.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_lgi2b_merged.bam chr1:40419898-40420330 > temp.bam
parseBam temp.bam run1_Uninjected_lgi2b 40420093 40420135; rm temp.bam
mv frameshift_summary_run1_Uninjected_lgi2b ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_lgi2b.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_lgi2b_merged.bam chr1:40419898-40420330 > temp.bam
parseBam temp.bam run1_Injected_lgi2b 40420093 40420135; rm temp.bam
mv frameshift_summary_run1_Injected_lgi2b ../../analysis/real_dataset/data/amplicondivider/run1_Injected_lgi2b.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_ncORF1_megamind_merged.bam chr17:22517903-22518335 > temp.bam
parseBam temp.bam run1_Injected_ncORF1_megamind 22518098 22518140; rm temp.bam
mv frameshift_summary_run1_Injected_ncORF1_megamind ../../analysis/real_dataset/data/amplicondivider/run1_Injected_ncORF1_megamind.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_ncORF1_megamind_merged.bam chr17:22517903-22518335 > temp.bam
parseBam temp.bam run1_Uninjected_ncORF1_megamind 22518098 22518140; rm temp.bam
mv frameshift_summary_run1_Uninjected_ncORF1_megamind ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_ncORF1_megamind.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_oep.1_merged.bam chr10:1989496-1989928 > temp.bam
parseBam temp.bam run1_Uninjected_oep.1 1989691 1989733; rm temp.bam
mv frameshift_summary_run1_Uninjected_oep.1 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_oep.1.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_oep.1_merged.bam chr10:1989496-1989928 > temp.bam
parseBam temp.bam run1_Injected_oep.1 1989691 1989733; rm temp.bam
mv frameshift_summary_run1_Injected_oep.1 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_oep.1.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_olfm1b_merged.bam chr21:6738504-6738936 > temp.bam
parseBam temp.bam run1_Uninjected_olfm1b 6738699 6738741; rm temp.bam
mv frameshift_summary_run1_Uninjected_olfm1b ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_olfm1b.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_olfm1b_merged.bam chr21:6738504-6738936 > temp.bam
parseBam temp.bam run1_Injected_olfm1b 6738699 6738741; rm temp.bam
mv frameshift_summary_run1_Injected_olfm1b ../../analysis/real_dataset/data/amplicondivider/run1_Injected_olfm1b.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_pitx2_merged.bam chr14:37446879-37447311 > temp.bam
parseBam temp.bam run1_Injected_pitx2 37447074 37447116; rm temp.bam
mv frameshift_summary_run1_Injected_pitx2 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_pitx2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_pitx2_merged.bam chr14:37446879-37447311 > temp.bam
parseBam temp.bam run1_Uninjected_pitx2 37447074 37447116; rm temp.bam
mv frameshift_summary_run1_Uninjected_pitx2 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_pitx2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_postnb_merged.bam chr15:33155870-33156302 > temp.bam
parseBam temp.bam run1_Injected_postnb 33156065 33156107; rm temp.bam
mv frameshift_summary_run1_Injected_postnb ../../analysis/real_dataset/data/amplicondivider/run1_Injected_postnb.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_postnb_merged.bam chr15:33155870-33156302 > temp.bam
parseBam temp.bam run1_Uninjected_postnb 33156065 33156107; rm temp.bam
mv frameshift_summary_run1_Uninjected_postnb ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_postnb.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_spaw_updated_merged.bam chr5:71786809-71787241 > temp.bam
parseBam temp.bam run1_Uninjected_spaw_updated 71787004 71787046; rm temp.bam
mv frameshift_summary_run1_Uninjected_spaw_updated ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_spaw_updated.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_spaw_updated_merged.bam chr5:71786809-71787241 > temp.bam
parseBam temp.bam run1_Injected_spaw_updated 71787004 71787046; rm temp.bam
mv frameshift_summary_run1_Injected_spaw_updated ../../analysis/real_dataset/data/amplicondivider/run1_Injected_spaw_updated.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_spop_merged.bam chr3:20703491-20703923 > temp.bam
parseBam temp.bam run1_Uninjected_spop 20703686 20703728; rm temp.bam
mv frameshift_summary_run1_Uninjected_spop ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_spop.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_spop_merged.bam chr3:20703491-20703923 > temp.bam
parseBam temp.bam run1_Injected_spop 20703686 20703728; rm temp.bam
mv frameshift_summary_run1_Injected_spop ../../analysis/real_dataset/data/amplicondivider/run1_Injected_spop.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_suz12a_merged.bam chr3:35949488-35949920 > temp.bam
parseBam temp.bam run1_Uninjected_suz12a 35949683 35949725; rm temp.bam
mv frameshift_summary_run1_Uninjected_suz12a ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_suz12a.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_suz12a_merged.bam chr3:35949488-35949920 > temp.bam
parseBam temp.bam run1_Injected_suz12a 35949683 35949725; rm temp.bam
mv frameshift_summary_run1_Injected_suz12a ../../analysis/real_dataset/data/amplicondivider/run1_Injected_suz12a.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_syt9b_merged.bam chr25:16198860-16199292 > temp.bam
parseBam temp.bam run1_Injected_syt9b 16199055 16199097; rm temp.bam
mv frameshift_summary_run1_Injected_syt9b ../../analysis/real_dataset/data/amplicondivider/run1_Injected_syt9b.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_syt9b_merged.bam chr25:16198860-16199292 > temp.bam
parseBam temp.bam run1_Uninjected_syt9b 16199055 16199097; rm temp.bam
mv frameshift_summary_run1_Uninjected_syt9b ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_syt9b.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_thbs3a_updated_merged.bam chr16:45764979-45765411 > temp.bam
parseBam temp.bam run1_Injected_thbs3a_updated 45765174 45765216; rm temp.bam
mv frameshift_summary_run1_Injected_thbs3a_updated ../../analysis/real_dataset/data/amplicondivider/run1_Injected_thbs3a_updated.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_thbs3a_updated_merged.bam chr16:45764979-45765411 > temp.bam
parseBam temp.bam run1_Uninjected_thbs3a_updated 45765174 45765216; rm temp.bam
mv frameshift_summary_run1_Uninjected_thbs3a_updated ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_thbs3a_updated.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_upf1_merged.bam chr2:56393034-56393466 > temp.bam
parseBam temp.bam run1_Uninjected_upf1 56393229 56393271; rm temp.bam
mv frameshift_summary_run1_Uninjected_upf1 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_upf1.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_upf1_merged.bam chr2:56393034-56393466 > temp.bam
parseBam temp.bam run1_Injected_upf1 56393229 56393271; rm temp.bam
mv frameshift_summary_run1_Injected_upf1 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_upf1.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_utx2_merged.bam chr9:34746297-34746729 > temp.bam
parseBam temp.bam run1_Injected_utx2 34746492 34746534; rm temp.bam
mv frameshift_summary_run1_Injected_utx2 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_utx2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_utx2_merged.bam chr9:34746297-34746729 > temp.bam
parseBam temp.bam run1_Uninjected_utx2 34746492 34746534; rm temp.bam
mv frameshift_summary_run1_Uninjected_utx2 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_utx2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_wif1_merged.bam chr4:12002066-12002498 > temp.bam
parseBam temp.bam run1_Uninjected_wif1 12002261 12002303; rm temp.bam
mv frameshift_summary_run1_Uninjected_wif1 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_wif1.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_wif1_merged.bam chr4:12002066-12002498 > temp.bam
parseBam temp.bam run1_Injected_wif1 12002261 12002303; rm temp.bam
mv frameshift_summary_run1_Injected_wif1 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_wif1.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_wif1.2_merged.bam chr4:12009865-12010297 > temp.bam
parseBam temp.bam run1_Uninjected_wif1.2 12010060 12010102; rm temp.bam
mv frameshift_summary_run1_Uninjected_wif1.2 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_wif1.2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_wif1.2_merged.bam chr4:12009865-12010297 > temp.bam
parseBam temp.bam run1_Injected_wif1.2 12010060 12010102; rm temp.bam
mv frameshift_summary_run1_Injected_wif1.2 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_wif1.2.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Uninjected_wif1.3_merged.bam chr4:12009883-12010315 > temp.bam
parseBam temp.bam run1_Uninjected_wif1.3 12010078 12010120; rm temp.bam
mv frameshift_summary_run1_Uninjected_wif1.3 ../../analysis/real_dataset/data/amplicondivider/run1_Uninjected_wif1.3.txt

samtools view -hb ../../analysis/real_dataset/data/run1_Injected_wif1.3_merged.bam chr4:12009883-12010315 > temp.bam
parseBam temp.bam run1_Injected_wif1.3 12010078 12010120; rm temp.bam
mv frameshift_summary_run1_Injected_wif1.3 ../../analysis/real_dataset/data/amplicondivider/run1_Injected_wif1.3.txt

samtools view -hb ../../analysis/real_dataset/data/run5_guide1_htatip12_merged.bam chr5:69744841-69745273 > temp.bam
parseBam temp.bam run5_guide1_htatip12 69745036 69745078; rm temp.bam
mv frameshift_summary_run5_guide1_htatip12 ../../analysis/real_dataset/data/amplicondivider/run5_guide1_htatip12.txt

samtools view -hb ../../analysis/real_dataset/data/run5_guide1and2_htatip12_merged.bam chr5:69744841-69745273 > temp.bam
parseBam temp.bam run5_guide1and2_htatip12 69745036 69745078; rm temp.bam
mv frameshift_summary_run5_guide1and2_htatip12 ../../analysis/real_dataset/data/amplicondivider/run5_guide1and2_htatip12.txt

samtools view -hb ../../analysis/real_dataset/data/run5_uninjected_htatip12_merged.bam chr5:69744841-69745273 > temp.bam
parseBam temp.bam run5_uninjected_htatip12 69745036 69745078; rm temp.bam
mv frameshift_summary_run5_uninjected_htatip12 ../../analysis/real_dataset/data/amplicondivider/run5_uninjected_htatip12.txt

samtools view -hb ../../analysis/real_dataset/data/run5_guide3_htatip34_merged.bam chr5:25267230-25267662 > temp.bam
parseBam temp.bam run5_guide3_htatip34 25267425 25267467; rm temp.bam
mv frameshift_summary_run5_guide3_htatip34 ../../analysis/real_dataset/data/amplicondivider/run5_guide3_htatip34.txt

samtools view -hb ../../analysis/real_dataset/data/run5_guide3and4_htatip34_merged.bam chr5:25267230-25267662 > temp.bam
parseBam temp.bam run5_guide3and4_htatip34 25267425 25267467; rm temp.bam
mv frameshift_summary_run5_guide3and4_htatip34 ../../analysis/real_dataset/data/amplicondivider/run5_guide3and4_htatip34.txt

samtools view -hb ../../analysis/real_dataset/data/run5_uninjected_htatip34_merged.bam chr5:25267230-25267662 > temp.bam
parseBam temp.bam run5_uninjected_htatip34 25267425 25267467; rm temp.bam
mv frameshift_summary_run5_uninjected_htatip34 ../../analysis/real_dataset/data/amplicondivider/run5_uninjected_htatip34.txt

samtools view -hb ../../analysis/real_dataset/data/run5_charon_lnc_3637_uninj_charon_lnc_mat_merged.bam chr1:52246864-52247296 > temp.bam
parseBam temp.bam run5_charon_lnc_3637_uninj_charon_lnc_mat 52247059 52247101; rm temp.bam
mv frameshift_summary_run5_charon_lnc_3637_uninj_charon_lnc_mat ../../analysis/real_dataset/data/amplicondivider/run5_charon_lnc_3637_uninj_charon_lnc_mat.txt

samtools view -hb ../../analysis/real_dataset/data/run5_charon_lnc_3637_inj_charon_lnc_mat_merged.bam chr1:52246864-52247296 > temp.bam
parseBam temp.bam run5_charon_lnc_3637_inj_charon_lnc_mat 52247059 52247101; rm temp.bam
mv frameshift_summary_run5_charon_lnc_3637_inj_charon_lnc_mat ../../analysis/real_dataset/data/amplicondivider/run5_charon_lnc_3637_inj_charon_lnc_mat.txt

samtools view -hb ../../analysis/real_dataset/data/run5_pitx2_lnc_B9_uninj_pitx2_lnc_merged.bam chr14:37493039-37493471 > temp.bam
parseBam temp.bam run5_pitx2_lnc_B9_uninj_pitx2_lnc 37493234 37493276; rm temp.bam
mv frameshift_summary_run5_pitx2_lnc_B9_uninj_pitx2_lnc ../../analysis/real_dataset/data/amplicondivider/run5_pitx2_lnc_B9_uninj_pitx2_lnc.txt

samtools view -hb ../../analysis/real_dataset/data/run5_pitx2_lnc_B9_inj_pitx2_lnc_merged.bam chr14:37493039-37493471 > temp.bam
parseBam temp.bam run5_pitx2_lnc_B9_inj_pitx2_lnc 37493234 37493276; rm temp.bam
mv frameshift_summary_run5_pitx2_lnc_B9_inj_pitx2_lnc ../../analysis/real_dataset/data/amplicondivider/run5_pitx2_lnc_B9_inj_pitx2_lnc.txt

samtools view -hb ../../analysis/real_dataset/data/run5_pitx2_lnc_B9B10_1_pitx2_lnc_merged.bam chr14:37493039-37493471 > temp.bam
parseBam temp.bam run5_pitx2_lnc_B9B10_1_pitx2_lnc 37493234 37493276; rm temp.bam
mv frameshift_summary_run5_pitx2_lnc_B9B10_1_pitx2_lnc ../../analysis/real_dataset/data/amplicondivider/run5_pitx2_lnc_B9B10_1_pitx2_lnc.txt

samtools view -hb ../../analysis/real_dataset/data/run5_pitx2_lnc_B9B10_2_pitx2_lnc_merged.bam chr14:37493039-37493471 > temp.bam
parseBam temp.bam run5_pitx2_lnc_B9B10_2_pitx2_lnc 37493234 37493276; rm temp.bam
mv frameshift_summary_run5_pitx2_lnc_B9B10_2_pitx2_lnc ../../analysis/real_dataset/data/amplicondivider/run5_pitx2_lnc_B9B10_2_pitx2_lnc.txt

samtools view -hb ../../analysis/real_dataset/data/run5_pitx2_lnc_B9B10_3_pitx2_lnc_merged.bam chr14:37493039-37493471 > temp.bam
parseBam temp.bam run5_pitx2_lnc_B9B10_3_pitx2_lnc 37493234 37493276; rm temp.bam
mv frameshift_summary_run5_pitx2_lnc_B9B10_3_pitx2_lnc ../../analysis/real_dataset/data/amplicondivider/run5_pitx2_lnc_B9B10_3_pitx2_lnc.txt

samtools view -hb ../../analysis/real_dataset/data/run5_F0x_NC12ab_setd1ba_1_1_merged.bam chr10:43351119-43351551 > temp.bam
parseBam temp.bam run5_F0x_NC12ab_setd1ba_1_1 43351314 43351356; rm temp.bam
mv frameshift_summary_run5_F0x_NC12ab_setd1ba_1_1 ../../analysis/real_dataset/data/amplicondivider/run5_F0x_NC12ab_setd1ba_1_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_F0x_NC12ab_setd1ba_1_2_merged.bam chr10:43351119-43351551 > temp.bam
parseBam temp.bam run5_F0x_NC12ab_setd1ba_1_2 43351314 43351356; rm temp.bam
mv frameshift_summary_run5_F0x_NC12ab_setd1ba_1_2 ../../analysis/real_dataset/data/amplicondivider/run5_F0x_NC12ab_setd1ba_1_2.txt

samtools view -hb ../../analysis/real_dataset/data/run5_F0x_NC12ab_setd1ba_1_3_merged.bam chr10:43351119-43351551 > temp.bam
parseBam temp.bam run5_F0x_NC12ab_setd1ba_1_3 43351314 43351356; rm temp.bam
mv frameshift_summary_run5_F0x_NC12ab_setd1ba_1_3 ../../analysis/real_dataset/data/amplicondivider/run5_F0x_NC12ab_setd1ba_1_3.txt

samtools view -hb ../../analysis/real_dataset/data/run5_F0x_NC12ab_setd1ba_1_4_merged.bam chr10:43351119-43351551 > temp.bam
parseBam temp.bam run5_F0x_NC12ab_setd1ba_1_4 43351314 43351356; rm temp.bam
mv frameshift_summary_run5_F0x_NC12ab_setd1ba_1_4 ../../analysis/real_dataset/data/amplicondivider/run5_F0x_NC12ab_setd1ba_1_4.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC12ab_setd1ba_SV40_g15ss_merged.bam chr10:43351119-43351551 > temp.bam
parseBam temp.bam run5_Injected_NC12ab_setd1ba_SV40_g15ss 43351314 43351356; rm temp.bam
mv frameshift_summary_run5_Injected_NC12ab_setd1ba_SV40_g15ss ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC12ab_setd1ba_SV40_g15ss.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC12ab_setd1ba_SV40_g15ds_merged.bam chr10:43351119-43351551 > temp.bam
parseBam temp.bam run5_Injected_NC12ab_setd1ba_SV40_g15ds 43351314 43351356; rm temp.bam
mv frameshift_summary_run5_Injected_NC12ab_setd1ba_SV40_g15ds ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC12ab_setd1ba_SV40_g15ds.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC12ab_setd1ba_SV40_g15+16ss_1_merged.bam chr10:43351119-43351551 > temp.bam
parseBam temp.bam run5_Injected_NC12ab_setd1ba_SV40_g15+16ss_1 43351314 43351356; rm temp.bam
mv frameshift_summary_run5_Injected_NC12ab_setd1ba_SV40_g15+16ss_1 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC12ab_setd1ba_SV40_g15+16ss_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC12ab_setd1ba_SV40_g15+16ds_1_merged.bam chr10:43351119-43351551 > temp.bam
parseBam temp.bam run5_Injected_NC12ab_setd1ba_SV40_g15+16ds_1 43351314 43351356; rm temp.bam
mv frameshift_summary_run5_Injected_NC12ab_setd1ba_SV40_g15+16ds_1 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC12ab_setd1ba_SV40_g15+16ds_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC12ab_setd1ba_SV40_uninjected_1_merged.bam chr10:43351119-43351551 > temp.bam
parseBam temp.bam run5_Uninjected_NC12ab_setd1ba_SV40_uninjected_1 43351314 43351356; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC12ab_setd1ba_SV40_uninjected_1 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC12ab_setd1ba_SV40_uninjected_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC3_dnd_sg71+72_1_merged.bam chr14:7376293-7376725 > temp.bam
parseBam temp.bam run5_Injected_NC3_dnd_sg71+72_1 7376488 7376530; rm temp.bam
mv frameshift_summary_run5_Injected_NC3_dnd_sg71+72_1 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC3_dnd_sg71+72_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC6_MALAT_sg73_merged.bam chr14:48573517-48573949 > temp.bam
parseBam temp.bam run5_Injected_NC6_MALAT_sg73 48573712 48573754; rm temp.bam
mv frameshift_summary_run5_Injected_NC6_MALAT_sg73 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC6_MALAT_sg73.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC7_cyrano_sg10+74_1_merged.bam chr13:33490962-33491394 > temp.bam
parseBam temp.bam run5_Injected_NC7_cyrano_sg10+74_1 33491157 33491199; rm temp.bam
mv frameshift_summary_run5_Injected_NC7_cyrano_sg10+74_1 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC7_cyrano_sg10+74_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC7_cyranoC1_sg75_merged.bam chr13:33487655-33488087 > temp.bam
parseBam temp.bam run5_Injected_NC7_cyranoC1_sg75 33487850 33487892; rm temp.bam
mv frameshift_summary_run5_Injected_NC7_cyranoC1_sg75 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC7_cyranoC1_sg75.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC7_cyranoC2_sg76+77_1_merged.bam chr13:33485012-33485444 > temp.bam
parseBam temp.bam run5_Injected_NC7_cyranoC2_sg76+77_1 33485207 33485249; rm temp.bam
mv frameshift_summary_run5_Injected_NC7_cyranoC2_sg76+77_1 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC7_cyranoC2_sg76+77_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC14_hoxA1_11A_TSS1_1_merged.bam chr19:19336789-19337221 > temp.bam
parseBam temp.bam run5_Injected_NC14_hoxA1_11A_TSS1_1 19336984 19337026; rm temp.bam
mv frameshift_summary_run5_Injected_NC14_hoxA1_11A_TSS1_1 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC14_hoxA1_11A_TSS1_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC14_hoxA1_11A_TSS2_1_merged.bam chr19:19336743-19337175 > temp.bam
parseBam temp.bam run5_Injected_NC14_hoxA1_11A_TSS2_1 19336938 19336980; rm temp.bam
mv frameshift_summary_run5_Injected_NC14_hoxA1_11A_TSS2_1 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC14_hoxA1_11A_TSS2_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC17_hoxAD3a_TSS1_1_merged.bam chr9:1811890-1812322 > temp.bam
parseBam temp.bam run5_Injected_NC17_hoxAD3a_TSS1_1 1812085 1812127; rm temp.bam
mv frameshift_summary_run5_Injected_NC17_hoxAD3a_TSS1_1 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC17_hoxAD3a_TSS1_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC17_hoxAD3a_TSS2_1_merged.bam chr9:1811928-1812360 > temp.bam
parseBam temp.bam run5_Injected_NC17_hoxAD3a_TSS2_1 1812123 1812165; rm temp.bam
mv frameshift_summary_run5_Injected_NC17_hoxAD3a_TSS2_1 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC17_hoxAD3a_TSS2_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC18_2_nr2f1a_1_merged.bam chr5:51525672-51526104 > temp.bam
parseBam temp.bam run5_Injected_NC18_2_nr2f1a_1 51525867 51525909; rm temp.bam
mv frameshift_summary_run5_Injected_NC18_2_nr2f1a_1 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC18_2_nr2f1a_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC21_1_ev1_e1i1_merged.bam chr15:31771520-31771952 > temp.bam
parseBam temp.bam run5_Injected_NC21_1_ev1_e1i1 31771715 31771757; rm temp.bam
mv frameshift_summary_run5_Injected_NC21_1_ev1_e1i1 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC21_1_ev1_e1i1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC24_mboatSall3_merged.bam chr16:7769726-7770158 > temp.bam
parseBam temp.bam run5_Injected_NC24_mboatSall3 7769921 7769963; rm temp.bam
mv frameshift_summary_run5_Injected_NC24_mboatSall3 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC24_mboatSall3.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC25_mctp2_1_1_merged.bam chr18:23379039-23379471 > temp.bam
parseBam temp.bam run5_Injected_NC25_mctp2_1_1 23379234 23379276; rm temp.bam
mv frameshift_summary_run5_Injected_NC25_mctp2_1_1 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC25_mctp2_1_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC25_mctp2_1_2_merged.bam chr18:23379008-23379440 > temp.bam
parseBam temp.bam run5_Injected_NC25_mctp2_1_2 23379203 23379245; rm temp.bam
mv frameshift_summary_run5_Injected_NC25_mctp2_1_2 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC25_mctp2_1_2.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_Toddler_u1_1_merged.bam chr1:18415390-18415822 > temp.bam
parseBam temp.bam run5_Injected_Toddler_u1_1 18415585 18415627; rm temp.bam
mv frameshift_summary_run5_Injected_Toddler_u1_1 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_Toddler_u1_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_Toddler_u2_merged.bam chr1:18415261-18415693 > temp.bam
parseBam temp.bam run5_Injected_Toddler_u2 18415456 18415498; rm temp.bam
mv frameshift_summary_run5_Injected_Toddler_u2 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_Toddler_u2.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC16_hoxCa1a_6a_1_merged.bam chr23:36328330-36328762 > temp.bam
parseBam temp.bam run5_Injected_NC16_hoxCa1a_6a_1 36328525 36328567; rm temp.bam
mv frameshift_summary_run5_Injected_NC16_hoxCa1a_6a_1 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC16_hoxCa1a_6a_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NCorf4_Cingulinintronic_merged.bam chr12:41005118-41005550 > temp.bam
parseBam temp.bam run5_Injected_NCorf4_Cingulinintronic 41005313 41005355; rm temp.bam
mv frameshift_summary_run5_Injected_NCorf4_Cingulinintronic ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NCorf4_Cingulinintronic.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NCorf5_polycistronic_merged.bam chr22:8821488-8821920 > temp.bam
parseBam temp.bam run5_Injected_NCorf5_polycistronic 8821683 8821725; rm temp.bam
mv frameshift_summary_run5_Injected_NCorf5_polycistronic ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NCorf5_polycistronic.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC15_hoxB1a_6a_merged.bam chr3:24341094-24341526 > temp.bam
parseBam temp.bam run5_Injected_NC15_hoxB1a_6a 24341289 24341331; rm temp.bam
mv frameshift_summary_run5_Injected_NC15_hoxB1a_6a ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC15_hoxB1a_6a.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC19_nr2f2_merged.bam chr18:23661449-23661881 > temp.bam
parseBam temp.bam run5_Injected_NC19_nr2f2 23661644 23661686; rm temp.bam
mv frameshift_summary_run5_Injected_NC19_nr2f2 ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC19_nr2f2.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Injected_NC22_tmem88b_merged.bam chr7:23006585-23007017 > temp.bam
parseBam temp.bam run5_Injected_NC22_tmem88b 23006780 23006822; rm temp.bam
mv frameshift_summary_run5_Injected_NC22_tmem88b ../../analysis/real_dataset/data/amplicondivider/run5_Injected_NC22_tmem88b.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC3_dnd_sg71+72_1_merged.bam chr14:7376293-7376725 > temp.bam
parseBam temp.bam run5_Uninjected_NC3_dnd_sg71+72_1 7376488 7376530; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC3_dnd_sg71+72_1 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC3_dnd_sg71+72_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC6_MALAT_sg73_merged.bam chr14:48573517-48573949 > temp.bam
parseBam temp.bam run5_Uninjected_NC6_MALAT_sg73 48573712 48573754; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC6_MALAT_sg73 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC6_MALAT_sg73.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC7_cyrano_sg10+74_1_merged.bam chr13:33490962-33491394 > temp.bam
parseBam temp.bam run5_Uninjected_NC7_cyrano_sg10+74_1 33491157 33491199; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC7_cyrano_sg10+74_1 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC7_cyrano_sg10+74_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC7_cyranoC1_sg75_merged.bam chr13:33487655-33488087 > temp.bam
parseBam temp.bam run5_Uninjected_NC7_cyranoC1_sg75 33487850 33487892; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC7_cyranoC1_sg75 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC7_cyranoC1_sg75.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC7_cyranoC2_sg76+77_1_merged.bam chr13:33485012-33485444 > temp.bam
parseBam temp.bam run5_Uninjected_NC7_cyranoC2_sg76+77_1 33485207 33485249; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC7_cyranoC2_sg76+77_1 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC7_cyranoC2_sg76+77_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC14_hoxA1_11A_TSS1_1_merged.bam chr19:19336789-19337221 > temp.bam
parseBam temp.bam run5_Uninjected_NC14_hoxA1_11A_TSS1_1 19336984 19337026; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC14_hoxA1_11A_TSS1_1 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC14_hoxA1_11A_TSS1_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC14_hoxA1_11A_TSS2_1_merged.bam chr19:19336743-19337175 > temp.bam
parseBam temp.bam run5_Uninjected_NC14_hoxA1_11A_TSS2_1 19336938 19336980; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC14_hoxA1_11A_TSS2_1 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC14_hoxA1_11A_TSS2_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC17_hoxAD3a_TSS1_1_merged.bam chr9:1811890-1812322 > temp.bam
parseBam temp.bam run5_Uninjected_NC17_hoxAD3a_TSS1_1 1812085 1812127; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC17_hoxAD3a_TSS1_1 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC17_hoxAD3a_TSS1_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC17_hoxAD3a_TSS2_1_merged.bam chr9:1811928-1812360 > temp.bam
parseBam temp.bam run5_Uninjected_NC17_hoxAD3a_TSS2_1 1812123 1812165; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC17_hoxAD3a_TSS2_1 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC17_hoxAD3a_TSS2_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC18_2_nr2f1a_1_merged.bam chr5:51525672-51526104 > temp.bam
parseBam temp.bam run5_Uninjected_NC18_2_nr2f1a_1 51525867 51525909; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC18_2_nr2f1a_1 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC18_2_nr2f1a_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC21_1_ev1_e1i1_merged.bam chr15:31771520-31771952 > temp.bam
parseBam temp.bam run5_Uninjected_NC21_1_ev1_e1i1 31771715 31771757; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC21_1_ev1_e1i1 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC21_1_ev1_e1i1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC24_mboatSall3_merged.bam chr16:7769726-7770158 > temp.bam
parseBam temp.bam run5_Uninjected_NC24_mboatSall3 7769921 7769963; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC24_mboatSall3 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC24_mboatSall3.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC25_mctp2_1_1_merged.bam chr18:23379039-23379471 > temp.bam
parseBam temp.bam run5_Uninjected_NC25_mctp2_1_1 23379234 23379276; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC25_mctp2_1_1 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC25_mctp2_1_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC25_mctp2_1_2_merged.bam chr18:23379008-23379440 > temp.bam
parseBam temp.bam run5_Uninjected_NC25_mctp2_1_2 23379203 23379245; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC25_mctp2_1_2 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC25_mctp2_1_2.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_Toddler_u1_1_merged.bam chr1:18415390-18415822 > temp.bam
parseBam temp.bam run5_Uninjected_Toddler_u1_1 18415585 18415627; rm temp.bam
mv frameshift_summary_run5_Uninjected_Toddler_u1_1 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_Toddler_u1_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_Toddler_u2_merged.bam chr1:18415261-18415693 > temp.bam
parseBam temp.bam run5_Uninjected_Toddler_u2 18415456 18415498; rm temp.bam
mv frameshift_summary_run5_Uninjected_Toddler_u2 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_Toddler_u2.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC16_hoxCa1a_6a_1_merged.bam chr23:36328330-36328762 > temp.bam
parseBam temp.bam run5_Uninjected_NC16_hoxCa1a_6a_1 36328525 36328567; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC16_hoxCa1a_6a_1 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC16_hoxCa1a_6a_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NCorf4_Cingulinintronic_merged.bam chr12:41005118-41005550 > temp.bam
parseBam temp.bam run5_Uninjected_NCorf4_Cingulinintronic 41005313 41005355; rm temp.bam
mv frameshift_summary_run5_Uninjected_NCorf4_Cingulinintronic ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NCorf4_Cingulinintronic.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NCorf5_polycistronic_merged.bam chr22:8821488-8821920 > temp.bam
parseBam temp.bam run5_Uninjected_NCorf5_polycistronic 8821683 8821725; rm temp.bam
mv frameshift_summary_run5_Uninjected_NCorf5_polycistronic ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NCorf5_polycistronic.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC15_hoxB1a_6a_merged.bam chr3:24341094-24341526 > temp.bam
parseBam temp.bam run5_Uninjected_NC15_hoxB1a_6a 24341289 24341331; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC15_hoxB1a_6a ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC15_hoxB1a_6a.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC19_nr2f2_merged.bam chr18:23661449-23661881 > temp.bam
parseBam temp.bam run5_Uninjected_NC19_nr2f2 23661644 23661686; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC19_nr2f2 ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC19_nr2f2.txt

samtools view -hb ../../analysis/real_dataset/data/run5_Uninjected_NC22_tmem88b_merged.bam chr7:23006585-23007017 > temp.bam
parseBam temp.bam run5_Uninjected_NC22_tmem88b 23006780 23006822; rm temp.bam
mv frameshift_summary_run5_Uninjected_NC22_tmem88b ../../analysis/real_dataset/data/amplicondivider/run5_Uninjected_NC22_tmem88b.txt

samtools view -hb ../../analysis/real_dataset/data/run5_F1_NC18_nr2f1a_merged.bam chr5:51525672-51526104 > temp.bam
parseBam temp.bam run5_F1_NC18_nr2f1a 51525867 51525909; rm temp.bam
mv frameshift_summary_run5_F1_NC18_nr2f1a ../../analysis/real_dataset/data/amplicondivider/run5_F1_NC18_nr2f1a.txt

samtools view -hb ../../analysis/real_dataset/data/run5_uninjected_charon_lnc_late_g80_merged.bam chr1:52317462-52317894 > temp.bam
parseBam temp.bam run5_uninjected_charon_lnc_late_g80 52317657 52317699; rm temp.bam
mv frameshift_summary_run5_uninjected_charon_lnc_late_g80 ../../analysis/real_dataset/data/amplicondivider/run5_uninjected_charon_lnc_late_g80.txt

samtools view -hb ../../analysis/real_dataset/data/run5_injected_charon_lnc_late_g80_merged.bam chr1:52317462-52317894 > temp.bam
parseBam temp.bam run5_injected_charon_lnc_late_g80 52317657 52317699; rm temp.bam
mv frameshift_summary_run5_injected_charon_lnc_late_g80 ../../analysis/real_dataset/data/amplicondivider/run5_injected_charon_lnc_late_g80.txt

samtools view -hb ../../analysis/real_dataset/data/run5_uninjected_spaw_lnc_merged.bam chr5:71797235-71797667 > temp.bam
parseBam temp.bam run5_uninjected_spaw_lnc 71797430 71797472; rm temp.bam
mv frameshift_summary_run5_uninjected_spaw_lnc ../../analysis/real_dataset/data/amplicondivider/run5_uninjected_spaw_lnc.txt

samtools view -hb ../../analysis/real_dataset/data/run5_injected_spaw_lnc_merged.bam chr5:71797235-71797667 > temp.bam
parseBam temp.bam run5_injected_spaw_lnc 71797430 71797472; rm temp.bam
mv frameshift_summary_run5_injected_spaw_lnc ../../analysis/real_dataset/data/amplicondivider/run5_injected_spaw_lnc.txt

samtools view -hb ../../analysis/real_dataset/data/run5_uninjected_pitx2_lnc_g103_merged.bam chr14:37493027-37493459 > temp.bam
parseBam temp.bam run5_uninjected_pitx2_lnc_g103 37493222 37493264; rm temp.bam
mv frameshift_summary_run5_uninjected_pitx2_lnc_g103 ../../analysis/real_dataset/data/amplicondivider/run5_uninjected_pitx2_lnc_g103.txt

samtools view -hb ../../analysis/real_dataset/data/run5_injected_pitx2_lnc_g103_merged.bam chr14:37493027-37493459 > temp.bam
parseBam temp.bam run5_injected_pitx2_lnc_g103 37493222 37493264; rm temp.bam
mv frameshift_summary_run5_injected_pitx2_lnc_g103 ../../analysis/real_dataset/data/amplicondivider/run5_injected_pitx2_lnc_g103.txt

samtools view -hb ../../analysis/real_dataset/data/run5_uninjected_cyrano_g105_merged.bam chr13:33490799-33491231 > temp.bam
parseBam temp.bam run5_uninjected_cyrano_g105 33490994 33491036; rm temp.bam
mv frameshift_summary_run5_uninjected_cyrano_g105 ../../analysis/real_dataset/data/amplicondivider/run5_uninjected_cyrano_g105.txt

samtools view -hb ../../analysis/real_dataset/data/run5_injected_cyrano_g105_merged.bam chr13:33490799-33491231 > temp.bam
parseBam temp.bam run5_injected_cyrano_g105 33490994 33491036; rm temp.bam
mv frameshift_summary_run5_injected_cyrano_g105 ../../analysis/real_dataset/data/amplicondivider/run5_injected_cyrano_g105.txt

samtools view -hb ../../analysis/real_dataset/data/run5_F0x_setd1ba_lnc_g15_1_merged.bam chr10:43351119-43351551 > temp.bam
parseBam temp.bam run5_F0x_setd1ba_lnc_g15_1 43351314 43351356; rm temp.bam
mv frameshift_summary_run5_F0x_setd1ba_lnc_g15_1 ../../analysis/real_dataset/data/amplicondivider/run5_F0x_setd1ba_lnc_g15_1.txt

samtools view -hb ../../analysis/real_dataset/data/run5_F0x_setd1ba_lnc_g15_2_merged.bam chr10:43351119-43351551 > temp.bam
parseBam temp.bam run5_F0x_setd1ba_lnc_g15_2 43351314 43351356; rm temp.bam
mv frameshift_summary_run5_F0x_setd1ba_lnc_g15_2 ../../analysis/real_dataset/data/amplicondivider/run5_F0x_setd1ba_lnc_g15_2.txt

samtools view -hb ../../analysis/real_dataset/data/run5_F0x_setd1ba_lnc_g15_3_merged.bam chr10:43351119-43351551 > temp.bam
parseBam temp.bam run5_F0x_setd1ba_lnc_g15_3 43351314 43351356; rm temp.bam
mv frameshift_summary_run5_F0x_setd1ba_lnc_g15_3 ../../analysis/real_dataset/data/amplicondivider/run5_F0x_setd1ba_lnc_g15_3.txt

samtools view -hb ../../analysis/real_dataset/data/run6_pitx2_lnc_103+104+12_B935b_uninj_merged.bam chr14:37492945-37493377 > temp.bam
parseBam temp.bam run6_pitx2_lnc_103+104+12_B935b_uninj 37493140 37493182; rm temp.bam
mv frameshift_summary_run6_pitx2_lnc_103+104+12_B935b_uninj ../../analysis/real_dataset/data/amplicondivider/run6_pitx2_lnc_103+104+12_B935b_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run6_pitx2_lnc_103+104+12_B935b_inj_merged.bam chr14:37492945-37493377 > temp.bam
parseBam temp.bam run6_pitx2_lnc_103+104+12_B935b_inj 37493140 37493182; rm temp.bam
mv frameshift_summary_run6_pitx2_lnc_103+104+12_B935b_inj ../../analysis/real_dataset/data/amplicondivider/run6_pitx2_lnc_103+104+12_B935b_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run6_charon_lnc_mat_78+79_3637_uninj_merged.bam chr1:52246864-52247296 > temp.bam
parseBam temp.bam run6_charon_lnc_mat_78+79_3637_uninj 52247059 52247101; rm temp.bam
mv frameshift_summary_run6_charon_lnc_mat_78+79_3637_uninj ../../analysis/real_dataset/data/amplicondivider/run6_charon_lnc_mat_78+79_3637_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run6_charon_lnc_mat_78+79_3637_inj_merged.bam chr1:52246864-52247296 > temp.bam
parseBam temp.bam run6_charon_lnc_mat_78+79_3637_inj 52247059 52247101; rm temp.bam
mv frameshift_summary_run6_charon_lnc_mat_78+79_3637_inj ../../analysis/real_dataset/data/amplicondivider/run6_charon_lnc_mat_78+79_3637_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run6_elovl6_e1_1_2_7071_uninj_merged.bam chr14:37467063-37467495 > temp.bam
parseBam temp.bam run6_elovl6_e1_1_2_7071_uninj 37467258 37467300; rm temp.bam
mv frameshift_summary_run6_elovl6_e1_1_2_7071_uninj ../../analysis/real_dataset/data/amplicondivider/run6_elovl6_e1_1_2_7071_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run6_elovl6_e1_1_2_7071_inj_merged.bam chr14:37467063-37467495 > temp.bam
parseBam temp.bam run6_elovl6_e1_1_2_7071_inj 37467258 37467300; rm temp.bam
mv frameshift_summary_run6_elovl6_e1_1_2_7071_inj ../../analysis/real_dataset/data/amplicondivider/run6_elovl6_e1_1_2_7071_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run6_dand5_JAG_uninj_merged.bam chr1:52321028-52321460 > temp.bam
parseBam temp.bam run6_dand5_JAG_uninj 52321223 52321265; rm temp.bam
mv frameshift_summary_run6_dand5_JAG_uninj ../../analysis/real_dataset/data/amplicondivider/run6_dand5_JAG_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run6_dand5_JAG_inj_merged.bam chr1:52321028-52321460 > temp.bam
parseBam temp.bam run6_dand5_JAG_inj 52321223 52321265; rm temp.bam
mv frameshift_summary_run6_dand5_JAG_inj ../../analysis/real_dataset/data/amplicondivider/run6_dand5_JAG_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run6_spaw_e1_1_9091_uninj_merged.bam chr5:71782747-71783179 > temp.bam
parseBam temp.bam run6_spaw_e1_1_9091_uninj 71782942 71782984; rm temp.bam
mv frameshift_summary_run6_spaw_e1_1_9091_uninj ../../analysis/real_dataset/data/amplicondivider/run6_spaw_e1_1_9091_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run6_spaw_e1_1_9091_inj_merged.bam chr5:71782747-71783179 > temp.bam
parseBam temp.bam run6_spaw_e1_1_9091_inj 71782942 71782984; rm temp.bam
mv frameshift_summary_run6_spaw_e1_1_9091_inj ../../analysis/real_dataset/data/amplicondivider/run6_spaw_e1_1_9091_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run6_charon_lnc_mat_e1_1_2_3685_uninj_merged.bam chr1:52247087-52247519 > temp.bam
parseBam temp.bam run6_charon_lnc_mat_e1_1_2_3685_uninj 52247282 52247324; rm temp.bam
mv frameshift_summary_run6_charon_lnc_mat_e1_1_2_3685_uninj ../../analysis/real_dataset/data/amplicondivider/run6_charon_lnc_mat_e1_1_2_3685_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run6_charon_lnc_mat_e1_1_2_3685_inj_merged.bam chr1:52247087-52247519 > temp.bam
parseBam temp.bam run6_charon_lnc_mat_e1_1_2_3685_inj 52247282 52247324; rm temp.bam
mv frameshift_summary_run6_charon_lnc_mat_e1_1_2_3685_inj ../../analysis/real_dataset/data/amplicondivider/run6_charon_lnc_mat_e1_1_2_3685_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run6_charon_lnc_mat_e2_1_8687_uninj_merged.bam chr1:52247672-52248104 > temp.bam
parseBam temp.bam run6_charon_lnc_mat_e2_1_8687_uninj 52247867 52247909; rm temp.bam
mv frameshift_summary_run6_charon_lnc_mat_e2_1_8687_uninj ../../analysis/real_dataset/data/amplicondivider/run6_charon_lnc_mat_e2_1_8687_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run6_charon_lnc_mat_e2_1_8687_inj_merged.bam chr1:52247672-52248104 > temp.bam
parseBam temp.bam run6_charon_lnc_mat_e2_1_8687_inj 52247867 52247909; rm temp.bam
mv frameshift_summary_run6_charon_lnc_mat_e2_1_8687_inj ../../analysis/real_dataset/data/amplicondivider/run6_charon_lnc_mat_e2_1_8687_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run6_insert_ctgfa_uninj_1_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_insert_ctgfa_uninj_1 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_insert_ctgfa_uninj_1 ../../analysis/real_dataset/data/amplicondivider/run6_insert_ctgfa_uninj_1.txt

samtools view -hb ../../analysis/real_dataset/data/run6_insert_ctgfa_my96ss_1_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_insert_ctgfa_my96ss_1 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_insert_ctgfa_my96ss_1 ../../analysis/real_dataset/data/amplicondivider/run6_insert_ctgfa_my96ss_1.txt

samtools view -hb ../../analysis/real_dataset/data/run6_insert_ctgfa_Invit96ss_1_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_insert_ctgfa_Invit96ss_1 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_insert_ctgfa_Invit96ss_1 ../../analysis/real_dataset/data/amplicondivider/run6_insert_ctgfa_Invit96ss_1.txt

samtools view -hb ../../analysis/real_dataset/data/run6_insert_ctgfa_uninj_2_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_insert_ctgfa_uninj_2 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_insert_ctgfa_uninj_2 ../../analysis/real_dataset/data/amplicondivider/run6_insert_ctgfa_uninj_2.txt

samtools view -hb ../../analysis/real_dataset/data/run6_insert_ctgfa_my96ds_3_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_insert_ctgfa_my96ds_3 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_insert_ctgfa_my96ds_3 ../../analysis/real_dataset/data/amplicondivider/run6_insert_ctgfa_my96ds_3.txt

samtools view -hb ../../analysis/real_dataset/data/run6_24C_1_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_24C_1 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_24C_1 ../../analysis/real_dataset/data/amplicondivider/run6_24C_1.txt

samtools view -hb ../../analysis/real_dataset/data/run6_28C_1_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_28C_1 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_28C_1 ../../analysis/real_dataset/data/amplicondivider/run6_28C_1.txt

samtools view -hb ../../analysis/real_dataset/data/run6_32C_1_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_32C_1 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_32C_1 ../../analysis/real_dataset/data/amplicondivider/run6_32C_1.txt

samtools view -hb ../../analysis/real_dataset/data/run6_con_1_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_con_1 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_con_1 ../../analysis/real_dataset/data/amplicondivider/run6_con_1.txt

samtools view -hb ../../analysis/real_dataset/data/run6_24C_2_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_24C_2 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_24C_2 ../../analysis/real_dataset/data/amplicondivider/run6_24C_2.txt

samtools view -hb ../../analysis/real_dataset/data/run6_28C_2_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_28C_2 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_28C_2 ../../analysis/real_dataset/data/amplicondivider/run6_28C_2.txt

samtools view -hb ../../analysis/real_dataset/data/run6_32C_2_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_32C_2 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_32C_2 ../../analysis/real_dataset/data/amplicondivider/run6_32C_2.txt

samtools view -hb ../../analysis/real_dataset/data/run6_Con_1_2_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_Con_1_2 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_Con_1_2 ../../analysis/real_dataset/data/amplicondivider/run6_Con_1_2.txt

samtools view -hb ../../analysis/real_dataset/data/run6_24C_3_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_24C_3 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_24C_3 ../../analysis/real_dataset/data/amplicondivider/run6_24C_3.txt

samtools view -hb ../../analysis/real_dataset/data/run6_28C_3_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_28C_3 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_28C_3 ../../analysis/real_dataset/data/amplicondivider/run6_28C_3.txt

samtools view -hb ../../analysis/real_dataset/data/run6_32C_3_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_32C_3 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_32C_3 ../../analysis/real_dataset/data/amplicondivider/run6_32C_3.txt

samtools view -hb ../../analysis/real_dataset/data/run6_con_3_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run6_con_3 25370845 25370887; rm temp.bam
mv frameshift_summary_run6_con_3 ../../analysis/real_dataset/data/amplicondivider/run6_con_3.txt

samtools view -hb ../../analysis/real_dataset/data/run7_SP1_inj_merged.bam chr4:15853062-15853494 > temp.bam
parseBam temp.bam run7_SP1_inj 15853257 15853299; rm temp.bam
mv frameshift_summary_run7_SP1_inj ../../analysis/real_dataset/data/amplicondivider/run7_SP1_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_SP1_uninj_merged.bam chr4:15853062-15853494 > temp.bam
parseBam temp.bam run7_SP1_uninj 15853257 15853299; rm temp.bam
mv frameshift_summary_run7_SP1_uninj ../../analysis/real_dataset/data/amplicondivider/run7_SP1_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_SP3_inj_merged.bam chr13:43202322-43202754 > temp.bam
parseBam temp.bam run7_SP3_inj 43202517 43202559; rm temp.bam
mv frameshift_summary_run7_SP3_inj ../../analysis/real_dataset/data/amplicondivider/run7_SP3_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_SP3_uninj_merged.bam chr13:43202322-43202754 > temp.bam
parseBam temp.bam run7_SP3_uninj 43202517 43202559; rm temp.bam
mv frameshift_summary_run7_SP3_uninj ../../analysis/real_dataset/data/amplicondivider/run7_SP3_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_SP4_inj_merged.bam chr19:16829948-16830380 > temp.bam
parseBam temp.bam run7_SP4_inj 16830143 16830185; rm temp.bam
mv frameshift_summary_run7_SP4_inj ../../analysis/real_dataset/data/amplicondivider/run7_SP4_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_SP4_uninj_merged.bam chr19:16829948-16830380 > temp.bam
parseBam temp.bam run7_SP4_uninj 16830143 16830185; rm temp.bam
mv frameshift_summary_run7_SP4_uninj ../../analysis/real_dataset/data/amplicondivider/run7_SP4_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_guide1_merged.bam chr1:585918-586350 > temp.bam
parseBam temp.bam run7_guide1 586113 586155; rm temp.bam
mv frameshift_summary_run7_guide1 ../../analysis/real_dataset/data/amplicondivider/run7_guide1.txt

samtools view -hb ../../analysis/real_dataset/data/run7_guide2_merged.bam chr1:585918-586350 > temp.bam
parseBam temp.bam run7_guide2 586113 586155; rm temp.bam
mv frameshift_summary_run7_guide2 ../../analysis/real_dataset/data/amplicondivider/run7_guide2.txt

samtools view -hb ../../analysis/real_dataset/data/run7_guide3_merged.bam chr1:585918-586350 > temp.bam
parseBam temp.bam run7_guide3 586113 586155; rm temp.bam
mv frameshift_summary_run7_guide3 ../../analysis/real_dataset/data/amplicondivider/run7_guide3.txt

samtools view -hb ../../analysis/real_dataset/data/run7_control_merged.bam chr1:585918-586350 > temp.bam
parseBam temp.bam run7_control 586113 586155; rm temp.bam
mv frameshift_summary_run7_control ../../analysis/real_dataset/data/amplicondivider/run7_control.txt

samtools view -hb ../../analysis/real_dataset/data/run7_injected_merged.bam chr24:17898756-17899188 > temp.bam
parseBam temp.bam run7_injected 17898951 17898993; rm temp.bam
mv frameshift_summary_run7_injected ../../analysis/real_dataset/data/amplicondivider/run7_injected.txt

samtools view -hb ../../analysis/real_dataset/data/run7_uninjected_merged.bam chr24:17898756-17899188 > temp.bam
parseBam temp.bam run7_uninjected 17898951 17898993; rm temp.bam
mv frameshift_summary_run7_uninjected ../../analysis/real_dataset/data/amplicondivider/run7_uninjected.txt

samtools view -hb ../../analysis/real_dataset/data/run7_injected2_merged.bam chr24:17898086-17898518 > temp.bam
parseBam temp.bam run7_injected2 17898281 17898323; rm temp.bam
mv frameshift_summary_run7_injected2 ../../analysis/real_dataset/data/amplicondivider/run7_injected2.txt

samtools view -hb ../../analysis/real_dataset/data/run7_Uninjected_1_merged.bam chr24:17898086-17898518 > temp.bam
parseBam temp.bam run7_Uninjected_1 17898281 17898323; rm temp.bam
mv frameshift_summary_run7_Uninjected_1 ../../analysis/real_dataset/data/amplicondivider/run7_Uninjected_1.txt

samtools view -hb ../../analysis/real_dataset/data/run7_spaw_e2_1_uninj_merged.bam chr5:71782747-71783179 > temp.bam
parseBam temp.bam run7_spaw_e2_1_uninj 71782942 71782984; rm temp.bam
mv frameshift_summary_run7_spaw_e2_1_uninj ../../analysis/real_dataset/data/amplicondivider/run7_spaw_e2_1_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_spaw_e2_1_inj_merged.bam chr5:71782747-71783179 > temp.bam
parseBam temp.bam run7_spaw_e2_1_inj 71782942 71782984; rm temp.bam
mv frameshift_summary_run7_spaw_e2_1_inj ../../analysis/real_dataset/data/amplicondivider/run7_spaw_e2_1_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_atp1a1.1_e2_1_uninj_merged.bam chr1:1473968-1474400 > temp.bam
parseBam temp.bam run7_atp1a1.1_e2_1_uninj 1474163 1474205; rm temp.bam
mv frameshift_summary_run7_atp1a1.1_e2_1_uninj ../../analysis/real_dataset/data/amplicondivider/run7_atp1a1.1_e2_1_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_atp1a1.1_e2_1_inj_merged.bam chr1:1473968-1474400 > temp.bam
parseBam temp.bam run7_atp1a1.1_e2_1_inj 1474163 1474205; rm temp.bam
mv frameshift_summary_run7_atp1a1.1_e2_1_inj ../../analysis/real_dataset/data/amplicondivider/run7_atp1a1.1_e2_1_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_atp1a1.1_e4_1_uninj_merged.bam chr1:1474318-1474750 > temp.bam
parseBam temp.bam run7_atp1a1.1_e4_1_uninj 1474513 1474555; rm temp.bam
mv frameshift_summary_run7_atp1a1.1_e4_1_uninj ../../analysis/real_dataset/data/amplicondivider/run7_atp1a1.1_e4_1_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_atp1a1.1_e4_1_inj_merged.bam chr1:1474318-1474750 > temp.bam
parseBam temp.bam run7_atp1a1.1_e4_1_inj 1474513 1474555; rm temp.bam
mv frameshift_summary_run7_atp1a1.1_e4_1_inj ../../analysis/real_dataset/data/amplicondivider/run7_atp1a1.1_e4_1_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_cx43.4_e1_1_uninj_merged.bam chr9:47610777-47611209 > temp.bam
parseBam temp.bam run7_cx43.4_e1_1_uninj 47610972 47611014; rm temp.bam
mv frameshift_summary_run7_cx43.4_e1_1_uninj ../../analysis/real_dataset/data/amplicondivider/run7_cx43.4_e1_1_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_cx43.4_e1_1_inj_merged.bam chr9:47610777-47611209 > temp.bam
parseBam temp.bam run7_cx43.4_e1_1_inj 47610972 47611014; rm temp.bam
mv frameshift_summary_run7_cx43.4_e1_1_inj ../../analysis/real_dataset/data/amplicondivider/run7_cx43.4_e1_1_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ablim1b_e2_1_uninj_merged.bam chr12:31704865-31705297 > temp.bam
parseBam temp.bam run7_ablim1b_e2_1_uninj 31705060 31705102; rm temp.bam
mv frameshift_summary_run7_ablim1b_e2_1_uninj ../../analysis/real_dataset/data/amplicondivider/run7_ablim1b_e2_1_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ablim1b_e2_1_inj_merged.bam chr12:31704865-31705297 > temp.bam
parseBam temp.bam run7_ablim1b_e2_1_inj 31705060 31705102; rm temp.bam
mv frameshift_summary_run7_ablim1b_e2_1_inj ../../analysis/real_dataset/data/amplicondivider/run7_ablim1b_e2_1_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_charon_lnc_larv_e1_1_2_uninj_merged.bam chr1:52317444-52317876 > temp.bam
parseBam temp.bam run7_charon_lnc_larv_e1_1_2_uninj 52317639 52317681; rm temp.bam
mv frameshift_summary_run7_charon_lnc_larv_e1_1_2_uninj ../../analysis/real_dataset/data/amplicondivider/run7_charon_lnc_larv_e1_1_2_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_charon_lnc_larv_e1_1_2_inj_merged.bam chr1:52317444-52317876 > temp.bam
parseBam temp.bam run7_charon_lnc_larv_e1_1_2_inj 52317639 52317681; rm temp.bam
mv frameshift_summary_run7_charon_lnc_larv_e1_1_2_inj ../../analysis/real_dataset/data/amplicondivider/run7_charon_lnc_larv_e1_1_2_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_spaw_lnc_e1_1_uninj_merged.bam chr5:71795617-71796049 > temp.bam
parseBam temp.bam run7_spaw_lnc_e1_1_uninj 71795812 71795854; rm temp.bam
mv frameshift_summary_run7_spaw_lnc_e1_1_uninj ../../analysis/real_dataset/data/amplicondivider/run7_spaw_lnc_e1_1_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_spaw_lnc_e1_1_inj_merged.bam chr5:71795617-71796049 > temp.bam
parseBam temp.bam run7_spaw_lnc_e1_1_inj 71795812 71795854; rm temp.bam
mv frameshift_summary_run7_spaw_lnc_e1_1_inj ../../analysis/real_dataset/data/amplicondivider/run7_spaw_lnc_e1_1_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_spaw_lnc_e2_1_uninj_merged.bam chr5:71797129-71797561 > temp.bam
parseBam temp.bam run7_spaw_lnc_e2_1_uninj 71797324 71797366; rm temp.bam
mv frameshift_summary_run7_spaw_lnc_e2_1_uninj ../../analysis/real_dataset/data/amplicondivider/run7_spaw_lnc_e2_1_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_spaw_lnc_e2_1_inj_merged.bam chr5:71797129-71797561 > temp.bam
parseBam temp.bam run7_spaw_lnc_e2_1_inj 71797324 71797366; rm temp.bam
mv frameshift_summary_run7_spaw_lnc_e2_1_inj ../../analysis/real_dataset/data/amplicondivider/run7_spaw_lnc_e2_1_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_elovl6_e1_1_2_uninj_merged.bam chr14:37467063-37467495 > temp.bam
parseBam temp.bam run7_elovl6_e1_1_2_uninj 37467258 37467300; rm temp.bam
mv frameshift_summary_run7_elovl6_e1_1_2_uninj ../../analysis/real_dataset/data/amplicondivider/run7_elovl6_e1_1_2_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_elovl6_e1_1_2_inj_merged.bam chr14:37467063-37467495 > temp.bam
parseBam temp.bam run7_elovl6_e1_1_2_inj 37467258 37467300; rm temp.bam
mv frameshift_summary_run7_elovl6_e1_1_2_inj ../../analysis/real_dataset/data/amplicondivider/run7_elovl6_e1_1_2_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_charon_lnc_mat_7879_uninj_merged.bam chr1:52246864-52247296 > temp.bam
parseBam temp.bam run7_charon_lnc_mat_7879_uninj 52247059 52247101; rm temp.bam
mv frameshift_summary_run7_charon_lnc_mat_7879_uninj ../../analysis/real_dataset/data/amplicondivider/run7_charon_lnc_mat_7879_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_charon_lnc_mat_7879_inj_merged.bam chr1:52246864-52247296 > temp.bam
parseBam temp.bam run7_charon_lnc_mat_7879_inj 52247059 52247101; rm temp.bam
mv frameshift_summary_run7_charon_lnc_mat_7879_inj ../../analysis/real_dataset/data/amplicondivider/run7_charon_lnc_mat_7879_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_charon_lnc_mat_e1_1_2_uninj_merged.bam chr1:52247087-52247519 > temp.bam
parseBam temp.bam run7_charon_lnc_mat_e1_1_2_uninj 52247282 52247324; rm temp.bam
mv frameshift_summary_run7_charon_lnc_mat_e1_1_2_uninj ../../analysis/real_dataset/data/amplicondivider/run7_charon_lnc_mat_e1_1_2_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_charon_lnc_mat_e1_1_2_inj_merged.bam chr1:52247087-52247519 > temp.bam
parseBam temp.bam run7_charon_lnc_mat_e1_1_2_inj 52247282 52247324; rm temp.bam
mv frameshift_summary_run7_charon_lnc_mat_e1_1_2_inj ../../analysis/real_dataset/data/amplicondivider/run7_charon_lnc_mat_e1_1_2_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_charon_lnc_mat_e3_1_4_uninj_merged.bam chr1:52246931-52247363 > temp.bam
parseBam temp.bam run7_charon_lnc_mat_e3_1_4_uninj 52247126 52247168; rm temp.bam
mv frameshift_summary_run7_charon_lnc_mat_e3_1_4_uninj ../../analysis/real_dataset/data/amplicondivider/run7_charon_lnc_mat_e3_1_4_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_charon_lnc_mat_e3_1_4_inj_merged.bam chr1:52246931-52247363 > temp.bam
parseBam temp.bam run7_charon_lnc_mat_e3_1_4_inj 52247126 52247168; rm temp.bam
mv frameshift_summary_run7_charon_lnc_mat_e3_1_4_inj ../../analysis/real_dataset/data/amplicondivider/run7_charon_lnc_mat_e3_1_4_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_charon_lnc_mat_e2_1_uninj_merged.bam chr1:52247672-52248104 > temp.bam
parseBam temp.bam run7_charon_lnc_mat_e2_1_uninj 52247867 52247909; rm temp.bam
mv frameshift_summary_run7_charon_lnc_mat_e2_1_uninj ../../analysis/real_dataset/data/amplicondivider/run7_charon_lnc_mat_e2_1_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_charon_lnc_mat_e2_1_inj_merged.bam chr1:52247672-52248104 > temp.bam
parseBam temp.bam run7_charon_lnc_mat_e2_1_inj 52247867 52247909; rm temp.bam
mv frameshift_summary_run7_charon_lnc_mat_e2_1_inj ../../analysis/real_dataset/data/amplicondivider/run7_charon_lnc_mat_e2_1_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_uninj1_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_uninj1 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_uninj1 ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_uninj1.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_my96ss_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_my96ss 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_my96ss ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_my96ss.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_invit96ss_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_invit96ss 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_invit96ss ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_invit96ss.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_uninj2_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_uninj2 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_uninj2 ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_uninj2.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_30ng56ds_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_30ng56ds 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_30ng56ds ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_30ng56ds.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_60ng56ds_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_60ng56ds 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_60ng56ds ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_60ng56ds.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_invit56ss_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_invit56ss 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_invit56ss ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_invit56ss.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_uninj3_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_uninj3 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_uninj3 ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_uninj3.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_my96ss2_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_my96ss2 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_my96ss2 ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_my96ss2.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_my96ds2_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_my96ds2 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_my96ds2 ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_my96ds2.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_uninj4_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_uninj4 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_uninj4 ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_uninj4.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_173ss_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_173ss 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_173ss ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_173ss.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_173ds_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_173ds 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_173ds ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_173ds.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_uninj5_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_uninj5 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_uninj5 ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_uninj5.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_213ss_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_213ss 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_213ss ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_213ss.txt

samtools view -hb ../../analysis/real_dataset/data/run7_ctgfa_213ds_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run7_ctgfa_213ds 25370845 25370887; rm temp.bam
mv frameshift_summary_run7_ctgfa_213ds ../../analysis/real_dataset/data/amplicondivider/run7_ctgfa_213ds.txt

samtools view -hb ../../analysis/real_dataset/data/run8_guide3_merged.bam chr1:585918-586350 > temp.bam
parseBam temp.bam run8_guide3 586113 586155; rm temp.bam
mv frameshift_summary_run8_guide3 ../../analysis/real_dataset/data/amplicondivider/run8_guide3.txt

samtools view -hb ../../analysis/real_dataset/data/run8_control_merged.bam chr1:585918-586350 > temp.bam
parseBam temp.bam run8_control 586113 586155; rm temp.bam
mv frameshift_summary_run8_control ../../analysis/real_dataset/data/amplicondivider/run8_control.txt

samtools view -hb ../../analysis/real_dataset/data/run8_g125_36_merged.bam chr4:15853287-15853719 > temp.bam
parseBam temp.bam run8_g125_36 15853482 15853524; rm temp.bam
mv frameshift_summary_run8_g125_36 ../../analysis/real_dataset/data/amplicondivider/run8_g125_36.txt

samtools view -hb ../../analysis/real_dataset/data/run8_un_37_merged.bam chr4:15853287-15853719 > temp.bam
parseBam temp.bam run8_un_37 15853482 15853524; rm temp.bam
mv frameshift_summary_run8_un_37 ../../analysis/real_dataset/data/amplicondivider/run8_un_37.txt

samtools view -hb ../../analysis/real_dataset/data/run8_g126_38_merged.bam chr4:15853055-15853487 > temp.bam
parseBam temp.bam run8_g126_38 15853250 15853292; rm temp.bam
mv frameshift_summary_run8_g126_38 ../../analysis/real_dataset/data/amplicondivider/run8_g126_38.txt

samtools view -hb ../../analysis/real_dataset/data/run8_un_39_merged.bam chr4:15853055-15853487 > temp.bam
parseBam temp.bam run8_un_39 15853250 15853292; rm temp.bam
mv frameshift_summary_run8_un_39 ../../analysis/real_dataset/data/amplicondivider/run8_un_39.txt

samtools view -hb ../../analysis/real_dataset/data/run8_g127_40_merged.bam chr4:15853307-15853739 > temp.bam
parseBam temp.bam run8_g127_40 15853502 15853544; rm temp.bam
mv frameshift_summary_run8_g127_40 ../../analysis/real_dataset/data/amplicondivider/run8_g127_40.txt

samtools view -hb ../../analysis/real_dataset/data/run8_un_41_merged.bam chr4:15853307-15853739 > temp.bam
parseBam temp.bam run8_un_41 15853502 15853544; rm temp.bam
mv frameshift_summary_run8_un_41 ../../analysis/real_dataset/data/amplicondivider/run8_un_41.txt

samtools view -hb ../../analysis/real_dataset/data/run8_g128_42_merged.bam chr13:43197817-43198249 > temp.bam
parseBam temp.bam run8_g128_42 43198012 43198054; rm temp.bam
mv frameshift_summary_run8_g128_42 ../../analysis/real_dataset/data/amplicondivider/run8_g128_42.txt

samtools view -hb ../../analysis/real_dataset/data/run8_un_43_merged.bam chr13:43197817-43198249 > temp.bam
parseBam temp.bam run8_un_43 43198012 43198054; rm temp.bam
mv frameshift_summary_run8_un_43 ../../analysis/real_dataset/data/amplicondivider/run8_un_43.txt

samtools view -hb ../../analysis/real_dataset/data/run8_g129_44_merged.bam chr4:6028150-6028582 > temp.bam
parseBam temp.bam run8_g129_44 6028345 6028387; rm temp.bam
mv frameshift_summary_run8_g129_44 ../../analysis/real_dataset/data/amplicondivider/run8_g129_44.txt

samtools view -hb ../../analysis/real_dataset/data/run8_un_45_merged.bam chr4:6028150-6028582 > temp.bam
parseBam temp.bam run8_un_45 6028345 6028387; rm temp.bam
mv frameshift_summary_run8_un_45 ../../analysis/real_dataset/data/amplicondivider/run8_un_45.txt

samtools view -hb ../../analysis/real_dataset/data/run8_g130_46_merged.bam chr4:6028167-6028599 > temp.bam
parseBam temp.bam run8_g130_46 6028362 6028404; rm temp.bam
mv frameshift_summary_run8_g130_46 ../../analysis/real_dataset/data/amplicondivider/run8_g130_46.txt

samtools view -hb ../../analysis/real_dataset/data/run8_un_47_merged.bam chr4:6028167-6028599 > temp.bam
parseBam temp.bam run8_un_47 6028362 6028404; rm temp.bam
mv frameshift_summary_run8_un_47 ../../analysis/real_dataset/data/amplicondivider/run8_un_47.txt

samtools view -hb ../../analysis/real_dataset/data/run8_g131_48_merged.bam chr4:6028171-6028603 > temp.bam
parseBam temp.bam run8_g131_48 6028366 6028408; rm temp.bam
mv frameshift_summary_run8_g131_48 ../../analysis/real_dataset/data/amplicondivider/run8_g131_48.txt

samtools view -hb ../../analysis/real_dataset/data/run8_un_49_merged.bam chr4:6028171-6028603 > temp.bam
parseBam temp.bam run8_un_49 6028366 6028408; rm temp.bam
mv frameshift_summary_run8_un_49 ../../analysis/real_dataset/data/amplicondivider/run8_un_49.txt

samtools view -hb ../../analysis/real_dataset/data/run8_g132_50_merged.bam chr4:6028187-6028619 > temp.bam
parseBam temp.bam run8_g132_50 6028382 6028424; rm temp.bam
mv frameshift_summary_run8_g132_50 ../../analysis/real_dataset/data/amplicondivider/run8_g132_50.txt

samtools view -hb ../../analysis/real_dataset/data/run8_un_51_merged.bam chr4:6028187-6028619 > temp.bam
parseBam temp.bam run8_un_51 6028382 6028424; rm temp.bam
mv frameshift_summary_run8_un_51 ../../analysis/real_dataset/data/amplicondivider/run8_un_51.txt

samtools view -hb ../../analysis/real_dataset/data/run8_old_g118_1_merged.bam chr4:15853062-15853494 > temp.bam
parseBam temp.bam run8_old_g118_1 15853257 15853299; rm temp.bam
mv frameshift_summary_run8_old_g118_1 ../../analysis/real_dataset/data/amplicondivider/run8_old_g118_1.txt

samtools view -hb ../../analysis/real_dataset/data/run8_un_5_merged.bam chr4:15853062-15853494 > temp.bam
parseBam temp.bam run8_un_5 15853257 15853299; rm temp.bam
mv frameshift_summary_run8_un_5 ../../analysis/real_dataset/data/amplicondivider/run8_un_5.txt

samtools view -hb ../../analysis/real_dataset/data/run8_old_g119_2_merged.bam chr4:15853092-15853524 > temp.bam
parseBam temp.bam run8_old_g119_2 15853287 15853329; rm temp.bam
mv frameshift_summary_run8_old_g119_2 ../../analysis/real_dataset/data/amplicondivider/run8_old_g119_2.txt

samtools view -hb ../../analysis/real_dataset/data/run8_Un_5_1_merged.bam chr4:15853092-15853524 > temp.bam
parseBam temp.bam run8_Un_5_1 15853287 15853329; rm temp.bam
mv frameshift_summary_run8_Un_5_1 ../../analysis/real_dataset/data/amplicondivider/run8_Un_5_1.txt

samtools view -hb ../../analysis/real_dataset/data/run8_old_g121_4_merged.bam chr19:16829948-16830380 > temp.bam
parseBam temp.bam run8_old_g121_4 16830143 16830185; rm temp.bam
mv frameshift_summary_run8_old_g121_4 ../../analysis/real_dataset/data/amplicondivider/run8_old_g121_4.txt

samtools view -hb ../../analysis/real_dataset/data/run8_Un_5_2_merged.bam chr19:16829948-16830380 > temp.bam
parseBam temp.bam run8_Un_5_2 16830143 16830185; rm temp.bam
mv frameshift_summary_run8_Un_5_2 ../../analysis/real_dataset/data/amplicondivider/run8_Un_5_2.txt

samtools view -hb ../../analysis/real_dataset/data/run8_trpv4_uninj_merged.bam chr5:21612126-21612558 > temp.bam
parseBam temp.bam run8_trpv4_uninj 21612321 21612363; rm temp.bam
mv frameshift_summary_run8_trpv4_uninj ../../analysis/real_dataset/data/amplicondivider/run8_trpv4_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run8_trpv4_inj_merged.bam chr5:21612126-21612558 > temp.bam
parseBam temp.bam run8_trpv4_inj 21612321 21612363; rm temp.bam
mv frameshift_summary_run8_trpv4_inj ../../analysis/real_dataset/data/amplicondivider/run8_trpv4_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run8_atp1a1.1_e2_1_uninj_merged.bam chr1:1473968-1474400 > temp.bam
parseBam temp.bam run8_atp1a1.1_e2_1_uninj 1474163 1474205; rm temp.bam
mv frameshift_summary_run8_atp1a1.1_e2_1_uninj ../../analysis/real_dataset/data/amplicondivider/run8_atp1a1.1_e2_1_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run8_atp1a1.1_e2_1_inj_merged.bam chr1:1473968-1474400 > temp.bam
parseBam temp.bam run8_atp1a1.1_e2_1_inj 1474163 1474205; rm temp.bam
mv frameshift_summary_run8_atp1a1.1_e2_1_inj ../../analysis/real_dataset/data/amplicondivider/run8_atp1a1.1_e2_1_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run8_atp1a1.1_e4_1_uninj_merged.bam chr1:1474318-1474750 > temp.bam
parseBam temp.bam run8_atp1a1.1_e4_1_uninj 1474513 1474555; rm temp.bam
mv frameshift_summary_run8_atp1a1.1_e4_1_uninj ../../analysis/real_dataset/data/amplicondivider/run8_atp1a1.1_e4_1_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run8_atp1a1.1_e4_1_inj_merged.bam chr1:1474318-1474750 > temp.bam
parseBam temp.bam run8_atp1a1.1_e4_1_inj 1474513 1474555; rm temp.bam
mv frameshift_summary_run8_atp1a1.1_e4_1_inj ../../analysis/real_dataset/data/amplicondivider/run8_atp1a1.1_e4_1_inj.txt

samtools view -hb ../../analysis/real_dataset/data/run8_atp1a1.1_e2_1__merged.bam chr1:1473968-1474400 > temp.bam
parseBam temp.bam run8_atp1a1.1_e2_1_ 1474163 1474205; rm temp.bam
mv frameshift_summary_run8_atp1a1.1_e2_1_ ../../analysis/real_dataset/data/amplicondivider/run8_atp1a1.1_e2_1_.txt

samtools view -hb ../../analysis/real_dataset/data/run8_atp1a1.1_e2_2__merged.bam chr1:1473968-1474400 > temp.bam
parseBam temp.bam run8_atp1a1.1_e2_2_ 1474163 1474205; rm temp.bam
mv frameshift_summary_run8_atp1a1.1_e2_2_ ../../analysis/real_dataset/data/amplicondivider/run8_atp1a1.1_e2_2_.txt

samtools view -hb ../../analysis/real_dataset/data/run8_atp1a1.1_e2_3__merged.bam chr1:1473968-1474400 > temp.bam
parseBam temp.bam run8_atp1a1.1_e2_3_ 1474163 1474205; rm temp.bam
mv frameshift_summary_run8_atp1a1.1_e2_3_ ../../analysis/real_dataset/data/amplicondivider/run8_atp1a1.1_e2_3_.txt

samtools view -hb ../../analysis/real_dataset/data/run8_atp1a1.1_e2_3+_merged.bam chr1:1473968-1474400 > temp.bam
parseBam temp.bam run8_atp1a1.1_e2_3+ 1474163 1474205; rm temp.bam
mv frameshift_summary_run8_atp1a1.1_e2_3+ ../../analysis/real_dataset/data/amplicondivider/run8_atp1a1.1_e2_3+.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected_merged.bam chr10:36270507-36270939 > temp.bam
parseBam temp.bam run9_injected 36270702 36270744; rm temp.bam
mv frameshift_summary_run9_injected ../../analysis/real_dataset/data/amplicondivider/run9_injected.txt

samtools view -hb ../../analysis/real_dataset/data/run9_uninjected_merged.bam chr10:36270507-36270939 > temp.bam
parseBam temp.bam run9_uninjected 36270702 36270744; rm temp.bam
mv frameshift_summary_run9_uninjected ../../analysis/real_dataset/data/amplicondivider/run9_uninjected.txt

samtools view -hb ../../analysis/real_dataset/data/run9_Injected_1_merged.bam chr16:26964255-26964687 > temp.bam
parseBam temp.bam run9_Injected_1 26964450 26964492; rm temp.bam
mv frameshift_summary_run9_Injected_1 ../../analysis/real_dataset/data/amplicondivider/run9_Injected_1.txt

samtools view -hb ../../analysis/real_dataset/data/run9_Uninjected_1_merged.bam chr16:26964255-26964687 > temp.bam
parseBam temp.bam run9_Uninjected_1 26964450 26964492; rm temp.bam
mv frameshift_summary_run9_Uninjected_1 ../../analysis/real_dataset/data/amplicondivider/run9_Uninjected_1.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected1_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected1 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected1 ../../analysis/real_dataset/data/amplicondivider/run9_injected1.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected2_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected2 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected2 ../../analysis/real_dataset/data/amplicondivider/run9_injected2.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected3_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected3 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected3 ../../analysis/real_dataset/data/amplicondivider/run9_injected3.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected4_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected4 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected4 ../../analysis/real_dataset/data/amplicondivider/run9_injected4.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected5_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected5 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected5 ../../analysis/real_dataset/data/amplicondivider/run9_injected5.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected6_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected6 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected6 ../../analysis/real_dataset/data/amplicondivider/run9_injected6.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected7_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected7 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected7 ../../analysis/real_dataset/data/amplicondivider/run9_injected7.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected8_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected8 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected8 ../../analysis/real_dataset/data/amplicondivider/run9_injected8.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected9_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected9 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected9 ../../analysis/real_dataset/data/amplicondivider/run9_injected9.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected10_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected10 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected10 ../../analysis/real_dataset/data/amplicondivider/run9_injected10.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected11_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected11 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected11 ../../analysis/real_dataset/data/amplicondivider/run9_injected11.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected12_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected12 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected12 ../../analysis/real_dataset/data/amplicondivider/run9_injected12.txt

samtools view -hb ../../analysis/real_dataset/data/run9_control1_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_control1 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_control1 ../../analysis/real_dataset/data/amplicondivider/run9_control1.txt

samtools view -hb ../../analysis/real_dataset/data/run9_control2_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_control2 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_control2 ../../analysis/real_dataset/data/amplicondivider/run9_control2.txt

samtools view -hb ../../analysis/real_dataset/data/run9_control3_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_control3 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_control3 ../../analysis/real_dataset/data/amplicondivider/run9_control3.txt

samtools view -hb ../../analysis/real_dataset/data/run9_control4_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_control4 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_control4 ../../analysis/real_dataset/data/amplicondivider/run9_control4.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected13_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected13 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected13 ../../analysis/real_dataset/data/amplicondivider/run9_injected13.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected14_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected14 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected14 ../../analysis/real_dataset/data/amplicondivider/run9_injected14.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected15_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected15 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected15 ../../analysis/real_dataset/data/amplicondivider/run9_injected15.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected16_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected16 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected16 ../../analysis/real_dataset/data/amplicondivider/run9_injected16.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected17_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected17 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected17 ../../analysis/real_dataset/data/amplicondivider/run9_injected17.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected18_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected18 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected18 ../../analysis/real_dataset/data/amplicondivider/run9_injected18.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected19_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected19 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected19 ../../analysis/real_dataset/data/amplicondivider/run9_injected19.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected20_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected20 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected20 ../../analysis/real_dataset/data/amplicondivider/run9_injected20.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected21_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected21 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected21 ../../analysis/real_dataset/data/amplicondivider/run9_injected21.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected22_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected22 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected22 ../../analysis/real_dataset/data/amplicondivider/run9_injected22.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected23_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected23 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected23 ../../analysis/real_dataset/data/amplicondivider/run9_injected23.txt

samtools view -hb ../../analysis/real_dataset/data/run9_injected24_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_injected24 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_injected24 ../../analysis/real_dataset/data/amplicondivider/run9_injected24.txt

samtools view -hb ../../analysis/real_dataset/data/run9_control5_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_control5 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_control5 ../../analysis/real_dataset/data/amplicondivider/run9_control5.txt

samtools view -hb ../../analysis/real_dataset/data/run9_control6_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_control6 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_control6 ../../analysis/real_dataset/data/amplicondivider/run9_control6.txt

samtools view -hb ../../analysis/real_dataset/data/run9_control7_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_control7 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_control7 ../../analysis/real_dataset/data/amplicondivider/run9_control7.txt

samtools view -hb ../../analysis/real_dataset/data/run9_control8_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_control8 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_control8 ../../analysis/real_dataset/data/amplicondivider/run9_control8.txt

samtools view -hb ../../analysis/real_dataset/data/run9_TSSe1i1_8687_uninj1_merged.bam chr1:52247672-52248104 > temp.bam
parseBam temp.bam run9_TSSe1i1_8687_uninj1 52247867 52247909; rm temp.bam
mv frameshift_summary_run9_TSSe1i1_8687_uninj1 ../../analysis/real_dataset/data/amplicondivider/run9_TSSe1i1_8687_uninj1.txt

samtools view -hb ../../analysis/real_dataset/data/run9_TSSe1i1_8687_78_merged.bam chr1:52247672-52248104 > temp.bam
parseBam temp.bam run9_TSSe1i1_8687_78 52247867 52247909; rm temp.bam
mv frameshift_summary_run9_TSSe1i1_8687_78 ../../analysis/real_dataset/data/amplicondivider/run9_TSSe1i1_8687_78.txt

samtools view -hb ../../analysis/real_dataset/data/run9_TSSe1i1_8687_uninj2_merged.bam chr1:52247672-52248104 > temp.bam
parseBam temp.bam run9_TSSe1i1_8687_uninj2 52247867 52247909; rm temp.bam
mv frameshift_summary_run9_TSSe1i1_8687_uninj2 ../../analysis/real_dataset/data/amplicondivider/run9_TSSe1i1_8687_uninj2.txt

samtools view -hb ../../analysis/real_dataset/data/run9_TSSe1i1_8687_79_merged.bam chr1:52247672-52248104 > temp.bam
parseBam temp.bam run9_TSSe1i1_8687_79 52247867 52247909; rm temp.bam
mv frameshift_summary_run9_TSSe1i1_8687_79 ../../analysis/real_dataset/data/amplicondivider/run9_TSSe1i1_8687_79.txt

samtools view -hb ../../analysis/real_dataset/data/run9_TSSe1i1_3637_uninj1_merged.bam chr1:52246899-52247331 > temp.bam
parseBam temp.bam run9_TSSe1i1_3637_uninj1 52247094 52247136; rm temp.bam
mv frameshift_summary_run9_TSSe1i1_3637_uninj1 ../../analysis/real_dataset/data/amplicondivider/run9_TSSe1i1_3637_uninj1.txt

samtools view -hb ../../analysis/real_dataset/data/run9_TSSe1i1_3637_78_merged.bam chr1:52246899-52247331 > temp.bam
parseBam temp.bam run9_TSSe1i1_3637_78 52247094 52247136; rm temp.bam
mv frameshift_summary_run9_TSSe1i1_3637_78 ../../analysis/real_dataset/data/amplicondivider/run9_TSSe1i1_3637_78.txt

samtools view -hb ../../analysis/real_dataset/data/run9_TSSe1i1_3637_uninj2_merged.bam chr1:52246899-52247331 > temp.bam
parseBam temp.bam run9_TSSe1i1_3637_uninj2 52247094 52247136; rm temp.bam
mv frameshift_summary_run9_TSSe1i1_3637_uninj2 ../../analysis/real_dataset/data/amplicondivider/run9_TSSe1i1_3637_uninj2.txt

samtools view -hb ../../analysis/real_dataset/data/run9_TSSe1i1_3637_79_merged.bam chr1:52246899-52247331 > temp.bam
parseBam temp.bam run9_TSSe1i1_3637_79 52247094 52247136; rm temp.bam
mv frameshift_summary_run9_TSSe1i1_3637_79 ../../analysis/real_dataset/data/amplicondivider/run9_TSSe1i1_3637_79.txt

samtools view -hb ../../analysis/real_dataset/data/run9_inj_uninj1_merged.bam chr1:52247087-52247519 > temp.bam
parseBam temp.bam run9_inj_uninj1 52247282 52247324; rm temp.bam
mv frameshift_summary_run9_inj_uninj1 ../../analysis/real_dataset/data/amplicondivider/run9_inj_uninj1.txt

samtools view -hb ../../analysis/real_dataset/data/run9_inj_charon_lnc_mat_e1_1_2_merged.bam chr1:52247087-52247519 > temp.bam
parseBam temp.bam run9_inj_charon_lnc_mat_e1_1_2 52247282 52247324; rm temp.bam
mv frameshift_summary_run9_inj_charon_lnc_mat_e1_1_2 ../../analysis/real_dataset/data/amplicondivider/run9_inj_charon_lnc_mat_e1_1_2.txt

samtools view -hb ../../analysis/real_dataset/data/run9_inj_uninj2_merged.bam chr1:52246931-52247363 > temp.bam
parseBam temp.bam run9_inj_uninj2 52247126 52247168; rm temp.bam
mv frameshift_summary_run9_inj_uninj2 ../../analysis/real_dataset/data/amplicondivider/run9_inj_uninj2.txt

samtools view -hb ../../analysis/real_dataset/data/run9_inj_uninj3_merged.bam chr1:52247672-52248104 > temp.bam
parseBam temp.bam run9_inj_uninj3 52247867 52247909; rm temp.bam
mv frameshift_summary_run9_inj_uninj3 ../../analysis/real_dataset/data/amplicondivider/run9_inj_uninj3.txt

samtools view -hb ../../analysis/real_dataset/data/run9_GFPnoSTOP_uninj_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_GFPnoSTOP_uninj 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_GFPnoSTOP_uninj ../../analysis/real_dataset/data/amplicondivider/run9_GFPnoSTOP_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run9_GFPnoSTOP_gRNA__merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_GFPnoSTOP_gRNA_ 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_GFPnoSTOP_gRNA_ ../../analysis/real_dataset/data/amplicondivider/run9_GFPnoSTOP_gRNA_.txt

samtools view -hb ../../analysis/real_dataset/data/run9_GFPnoSTOP_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_GFPnoSTOP 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_GFPnoSTOP ../../analysis/real_dataset/data/amplicondivider/run9_GFPnoSTOP.txt

samtools view -hb ../../analysis/real_dataset/data/run9_uninj_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_uninj 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_uninj ../../analysis/real_dataset/data/amplicondivider/run9_uninj.txt

samtools view -hb ../../analysis/real_dataset/data/run9_my96ss_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_my96ss 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_my96ss ../../analysis/real_dataset/data/amplicondivider/run9_my96ss.txt

samtools view -hb ../../analysis/real_dataset/data/run9_invit96ss_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_invit96ss 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_invit96ss ../../analysis/real_dataset/data/amplicondivider/run9_invit96ss.txt

samtools view -hb ../../analysis/real_dataset/data/run9_Uninj_3_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_Uninj_3 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_Uninj_3 ../../analysis/real_dataset/data/amplicondivider/run9_Uninj_3.txt

samtools view -hb ../../analysis/real_dataset/data/run9_213ss_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_213ss 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_213ss ../../analysis/real_dataset/data/amplicondivider/run9_213ss.txt

samtools view -hb ../../analysis/real_dataset/data/run9_213ds_merged.bam chr20:25370650-25371082 > temp.bam
parseBam temp.bam run9_213ds 25370845 25370887; rm temp.bam
mv frameshift_summary_run9_213ds ../../analysis/real_dataset/data/amplicondivider/run9_213ds.txt

samtools view -hb ../../analysis/real_dataset/data/run10_suz12b_4_merged.bam chr6:19371593-19372025 > temp.bam
parseBam temp.bam run10_suz12b_4 19371788 19371830; rm temp.bam
mv frameshift_summary_run10_suz12b_4 ../../analysis/real_dataset/data/amplicondivider/run10_suz12b_4.txt

samtools view -hb ../../analysis/real_dataset/data/run10_suz12b_C_merged.bam chr6:19371593-19372025 > temp.bam
parseBam temp.bam run10_suz12b_C 19371788 19371830; rm temp.bam
mv frameshift_summary_run10_suz12b_C ../../analysis/real_dataset/data/amplicondivider/run10_suz12b_C.txt

samtools view -hb ../../analysis/real_dataset/data/run10_smg8_1_merged.bam chr10:36270507-36270939 > temp.bam
parseBam temp.bam run10_smg8_1 36270702 36270744; rm temp.bam
mv frameshift_summary_run10_smg8_1 ../../analysis/real_dataset/data/amplicondivider/run10_smg8_1.txt

samtools view -hb ../../analysis/real_dataset/data/run10_smg8_C_merged.bam chr10:36270507-36270939 > temp.bam
parseBam temp.bam run10_smg8_C 36270702 36270744; rm temp.bam
mv frameshift_summary_run10_smg8_C ../../analysis/real_dataset/data/amplicondivider/run10_smg8_C.txt

samtools view -hb ../../analysis/real_dataset/data/run10_smg9_1_merged.bam chr16:26964255-26964687 > temp.bam
parseBam temp.bam run10_smg9_1 26964450 26964492; rm temp.bam
mv frameshift_summary_run10_smg9_1 ../../analysis/real_dataset/data/amplicondivider/run10_smg9_1.txt

samtools view -hb ../../analysis/real_dataset/data/run10_smg9_C_merged.bam chr16:26964255-26964687 > temp.bam
parseBam temp.bam run10_smg9_C 26964450 26964492; rm temp.bam
mv frameshift_summary_run10_smg9_C ../../analysis/real_dataset/data/amplicondivider/run10_smg9_C.txt

samtools view -hb ../../analysis/real_dataset/data/run10_Drago_11_merged.bam chr4:12644555-12644987 > temp.bam
parseBam temp.bam run10_Drago_11 12644750 12644792; rm temp.bam
mv frameshift_summary_run10_Drago_11 ../../analysis/real_dataset/data/amplicondivider/run10_Drago_11.txt

samtools view -hb ../../analysis/real_dataset/data/run10_Drago_1C_merged.bam chr4:12644555-12644987 > temp.bam
parseBam temp.bam run10_Drago_1C 12644750 12644792; rm temp.bam
mv frameshift_summary_run10_Drago_1C ../../analysis/real_dataset/data/amplicondivider/run10_Drago_1C.txt

samtools view -hb ../../analysis/real_dataset/data/run10_Drago_12_merged.bam chr4:12644555-12644987 > temp.bam
parseBam temp.bam run10_Drago_12 12644750 12644792; rm temp.bam
mv frameshift_summary_run10_Drago_12 ../../analysis/real_dataset/data/amplicondivider/run10_Drago_12.txt

samtools view -hb ../../analysis/real_dataset/data/run10_Drago_23_merged.bam chr4:12644069-12644501 > temp.bam
parseBam temp.bam run10_Drago_23 12644264 12644306; rm temp.bam
mv frameshift_summary_run10_Drago_23 ../../analysis/real_dataset/data/amplicondivider/run10_Drago_23.txt

samtools view -hb ../../analysis/real_dataset/data/run10_Drago_2C_merged.bam chr4:12644069-12644501 > temp.bam
parseBam temp.bam run10_Drago_2C 12644264 12644306; rm temp.bam
mv frameshift_summary_run10_Drago_2C ../../analysis/real_dataset/data/amplicondivider/run10_Drago_2C.txt

samtools view -hb ../../analysis/real_dataset/data/run10_Drago_31_merged.bam chr11:26406330-26406762 > temp.bam
parseBam temp.bam run10_Drago_31 26406525 26406567; rm temp.bam
mv frameshift_summary_run10_Drago_31 ../../analysis/real_dataset/data/amplicondivider/run10_Drago_31.txt

samtools view -hb ../../analysis/real_dataset/data/run10_Drago_3C_merged.bam chr11:26406330-26406762 > temp.bam
parseBam temp.bam run10_Drago_3C 26406525 26406567; rm temp.bam
mv frameshift_summary_run10_Drago_3C ../../analysis/real_dataset/data/amplicondivider/run10_Drago_3C.txt

samtools view -hb ../../analysis/real_dataset/data/run10_Drago_4_merged.bam chr11:26406477-26406909 > temp.bam
parseBam temp.bam run10_Drago_4 26406672 26406714; rm temp.bam
mv frameshift_summary_run10_Drago_4 ../../analysis/real_dataset/data/amplicondivider/run10_Drago_4.txt

samtools view -hb ../../analysis/real_dataset/data/run10_Drago_4C_merged.bam chr11:26406477-26406909 > temp.bam
parseBam temp.bam run10_Drago_4C 26406672 26406714; rm temp.bam
mv frameshift_summary_run10_Drago_4C ../../analysis/real_dataset/data/amplicondivider/run10_Drago_4C.txt

samtools view -hb ../../analysis/real_dataset/data/run10_7879_1_merged.bam chr1:52246864-52247296 > temp.bam
parseBam temp.bam run10_7879_1 52247059 52247101; rm temp.bam
mv frameshift_summary_run10_7879_1 ../../analysis/real_dataset/data/amplicondivider/run10_7879_1.txt

samtools view -hb ../../analysis/real_dataset/data/run10_7879_2_merged.bam chr1:52246864-52247296 > temp.bam
parseBam temp.bam run10_7879_2 52247059 52247101; rm temp.bam
mv frameshift_summary_run10_7879_2 ../../analysis/real_dataset/data/amplicondivider/run10_7879_2.txt

samtools view -hb ../../analysis/real_dataset/data/run10_7879_3_merged.bam chr1:52246864-52247296 > temp.bam
parseBam temp.bam run10_7879_3 52247059 52247101; rm temp.bam
mv frameshift_summary_run10_7879_3 ../../analysis/real_dataset/data/amplicondivider/run10_7879_3.txt

samtools view -hb ../../analysis/real_dataset/data/run10_7879_4_merged.bam chr1:52246864-52247296 > temp.bam
parseBam temp.bam run10_7879_4 52247059 52247101; rm temp.bam
mv frameshift_summary_run10_7879_4 ../../analysis/real_dataset/data/amplicondivider/run10_7879_4.txt

samtools view -hb ../../analysis/real_dataset/data/run10_spaw_1_merged.bam chr5:71786787-71787219 > temp.bam
parseBam temp.bam run10_spaw_1 71786982 71787024; rm temp.bam
mv frameshift_summary_run10_spaw_1 ../../analysis/real_dataset/data/amplicondivider/run10_spaw_1.txt

samtools view -hb ../../analysis/real_dataset/data/run10_spaw_2_merged.bam chr5:71786787-71787219 > temp.bam
parseBam temp.bam run10_spaw_2 71786982 71787024; rm temp.bam
mv frameshift_summary_run10_spaw_2 ../../analysis/real_dataset/data/amplicondivider/run10_spaw_2.txt

samtools view -hb ../../analysis/real_dataset/data/run10_spaw_3_merged.bam chr5:71786787-71787219 > temp.bam
parseBam temp.bam run10_spaw_3 71786982 71787024; rm temp.bam
mv frameshift_summary_run10_spaw_3 ../../analysis/real_dataset/data/amplicondivider/run10_spaw_3.txt

samtools view -hb ../../analysis/real_dataset/data/run10_TSSe1i1_191192_uninj1_merged.bam chr1:52246864-52247296 > temp.bam
parseBam temp.bam run10_TSSe1i1_191192_uninj1 52247059 52247101; rm temp.bam
mv frameshift_summary_run10_TSSe1i1_191192_uninj1 ../../analysis/real_dataset/data/amplicondivider/run10_TSSe1i1_191192_uninj1.txt

samtools view -hb ../../analysis/real_dataset/data/run10_TSSe1i1_191192_78_merged.bam chr1:52246864-52247296 > temp.bam
parseBam temp.bam run10_TSSe1i1_191192_78 52247059 52247101; rm temp.bam
mv frameshift_summary_run10_TSSe1i1_191192_78 ../../analysis/real_dataset/data/amplicondivider/run10_TSSe1i1_191192_78.txt

samtools view -hb ../../analysis/real_dataset/data/run10_TSSe1i1_191192_uninj2_merged.bam chr1:52246864-52247296 > temp.bam
parseBam temp.bam run10_TSSe1i1_191192_uninj2 52247059 52247101; rm temp.bam
mv frameshift_summary_run10_TSSe1i1_191192_uninj2 ../../analysis/real_dataset/data/amplicondivider/run10_TSSe1i1_191192_uninj2.txt

samtools view -hb ../../analysis/real_dataset/data/run10_TSSe1i1_191192_79_merged.bam chr1:52246864-52247296 > temp.bam
parseBam temp.bam run10_TSSe1i1_191192_79 52247059 52247101; rm temp.bam
mv frameshift_summary_run10_TSSe1i1_191192_79 ../../analysis/real_dataset/data/amplicondivider/run10_TSSe1i1_191192_79.txt

samtools view -hb ../../analysis/real_dataset/data/run10_TSSe1i1_19187_uninj1_merged.bam chr1:52247672-52248104 > temp.bam
parseBam temp.bam run10_TSSe1i1_19187_uninj1 52247867 52247909; rm temp.bam
mv frameshift_summary_run10_TSSe1i1_19187_uninj1 ../../analysis/real_dataset/data/amplicondivider/run10_TSSe1i1_19187_uninj1.txt

samtools view -hb ../../analysis/real_dataset/data/run10_TSSe1i1_19187_78_merged.bam chr1:52247672-52248104 > temp.bam
parseBam temp.bam run10_TSSe1i1_19187_78 52247867 52247909; rm temp.bam
mv frameshift_summary_run10_TSSe1i1_19187_78 ../../analysis/real_dataset/data/amplicondivider/run10_TSSe1i1_19187_78.txt

samtools view -hb ../../analysis/real_dataset/data/run10_TSSe1i1_19187_uninj2_merged.bam chr1:52247672-52248104 > temp.bam
parseBam temp.bam run10_TSSe1i1_19187_uninj2 52247867 52247909; rm temp.bam
mv frameshift_summary_run10_TSSe1i1_19187_uninj2 ../../analysis/real_dataset/data/amplicondivider/run10_TSSe1i1_19187_uninj2.txt

samtools view -hb ../../analysis/real_dataset/data/run10_TSSe1i1_19187_79_merged.bam chr1:52247672-52248104 > temp.bam
parseBam temp.bam run10_TSSe1i1_19187_79 52247867 52247909; rm temp.bam
mv frameshift_summary_run10_TSSe1i1_19187_79 ../../analysis/real_dataset/data/amplicondivider/run10_TSSe1i1_19187_79.txt

samtools view -hb ../../analysis/real_dataset/data/run10_inj_uninj3_merged.bam chr1:52247672-52248104 > temp.bam
parseBam temp.bam run10_inj_uninj3 52247867 52247909; rm temp.bam
mv frameshift_summary_run10_inj_uninj3 ../../analysis/real_dataset/data/amplicondivider/run10_inj_uninj3.txt

samtools view -hb ../../analysis/real_dataset/data/run10_charon_lnc_mat_e2_1_merged.bam chr1:52247672-52248104 > temp.bam
parseBam temp.bam run10_charon_lnc_mat_e2_1 52247867 52247909; rm temp.bam
mv frameshift_summary_run10_charon_lnc_mat_e2_1 ../../analysis/real_dataset/data/amplicondivider/run10_charon_lnc_mat_e2_1.txt

samtools view -hb ../../analysis/real_dataset/data/run10_lasp1n_g136STOP_merged.bam chr3:15687842-15688274 > temp.bam
parseBam temp.bam run10_lasp1n_g136STOP 15688037 15688079; rm temp.bam
mv frameshift_summary_run10_lasp1n_g136STOP ../../analysis/real_dataset/data/amplicondivider/run10_lasp1n_g136STOP.txt

samtools view -hb ../../analysis/real_dataset/data/run10_lasp1n_uninjected_merged.bam chr3:15687842-15688274 > temp.bam
parseBam temp.bam run10_lasp1n_uninjected 15688037 15688079; rm temp.bam
mv frameshift_summary_run10_lasp1n_uninjected ../../analysis/real_dataset/data/amplicondivider/run10_lasp1n_uninjected.txt

