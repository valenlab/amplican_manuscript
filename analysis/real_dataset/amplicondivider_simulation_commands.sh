cd ../software/ampliconDIVider-master
source ampliconDIV_minimal.sh
samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr10:40116277-40116709 > temp.bam
parseBam temp.bam Injected_DscamB 40116472 40116514; rm temp.bam
mv frameshift_summary_Injected_DscamB ../../analysis/real_dataset/data/amplicondivider/Injected_DscamB.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr10:40116277-40116709 > temp.bam
parseBam temp.bam Uninjected_DscamB 40116472 40116514; rm temp.bam
mv frameshift_summary_Uninjected_DscamB ../../analysis/real_dataset/data/amplicondivider/Uninjected_DscamB.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr14:34986946-34987378 > temp.bam
parseBam temp.bam Uninjected_FoxA 34987141 34987183; rm temp.bam
mv frameshift_summary_Uninjected_FoxA ../../analysis/real_dataset/data/amplicondivider/Uninjected_FoxA.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr14:34986946-34987378 > temp.bam
parseBam temp.bam Injected_FoxA 34987141 34987183; rm temp.bam
mv frameshift_summary_Injected_FoxA ../../analysis/real_dataset/data/amplicondivider/Injected_FoxA.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr1:6993658-6994090 > temp.bam
parseBam temp.bam Uninjected_NC20_mmd2_snoRNA_nc 6993853 6993895; rm temp.bam
mv frameshift_summary_Uninjected_NC20_mmd2_snoRNA_nc ../../analysis/real_dataset/data/amplicondivider/Uninjected_NC20_mmd2_snoRNA_nc.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr1:6993658-6994090 > temp.bam
parseBam temp.bam Injected_NC20_mmd2_snoRNA_nc 6993853 6993895; rm temp.bam
mv frameshift_summary_Injected_NC20_mmd2_snoRNA_nc ../../analysis/real_dataset/data/amplicondivider/Injected_NC20_mmd2_snoRNA_nc.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr16:22249480-22249912 > temp.bam
parseBam temp.bam Uninjected_NP005 22249675 22249717; rm temp.bam
mv frameshift_summary_Uninjected_NP005 ../../analysis/real_dataset/data/amplicondivider/Uninjected_NP005.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr16:22249480-22249912 > temp.bam
parseBam temp.bam Injected_NP005 22249675 22249717; rm temp.bam
mv frameshift_summary_Injected_NP005 ../../analysis/real_dataset/data/amplicondivider/Injected_NP005.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr22:23495806-23496238 > temp.bam
parseBam temp.bam Uninjected_NP011 23496001 23496043; rm temp.bam
mv frameshift_summary_Uninjected_NP011 ../../analysis/real_dataset/data/amplicondivider/Uninjected_NP011.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr22:23495806-23496238 > temp.bam
parseBam temp.bam Injected_NP011 23496001 23496043; rm temp.bam
mv frameshift_summary_Injected_NP011 ../../analysis/real_dataset/data/amplicondivider/Injected_NP011.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr6:19543925-19544357 > temp.bam
parseBam temp.bam Uninjected_NP019 19544120 19544162; rm temp.bam
mv frameshift_summary_Uninjected_NP019 ../../analysis/real_dataset/data/amplicondivider/Uninjected_NP019.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr6:19543925-19544357 > temp.bam
parseBam temp.bam Injected_NP019 19544120 19544162; rm temp.bam
mv frameshift_summary_Injected_NP019 ../../analysis/real_dataset/data/amplicondivider/Injected_NP019.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr4:15853062-15853494 > temp.bam
parseBam temp.bam Uninjected_SP1 15853257 15853299; rm temp.bam
mv frameshift_summary_Uninjected_SP1 ../../analysis/real_dataset/data/amplicondivider/Uninjected_SP1.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr4:15853062-15853494 > temp.bam
parseBam temp.bam Injected_SP1 15853257 15853299; rm temp.bam
mv frameshift_summary_Injected_SP1 ../../analysis/real_dataset/data/amplicondivider/Injected_SP1.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr16:26212212-26212644 > temp.bam
parseBam temp.bam Uninjected_SP12 26212407 26212449; rm temp.bam
mv frameshift_summary_Uninjected_SP12 ../../analysis/real_dataset/data/amplicondivider/Uninjected_SP12.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr16:26212212-26212644 > temp.bam
parseBam temp.bam Injected_SP12 26212407 26212449; rm temp.bam
mv frameshift_summary_Injected_SP12 ../../analysis/real_dataset/data/amplicondivider/Injected_SP12.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr2:48802101-48802533 > temp.bam
parseBam temp.bam Injected_SP15 48802296 48802338; rm temp.bam
mv frameshift_summary_Injected_SP15 ../../analysis/real_dataset/data/amplicondivider/Injected_SP15.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr2:48802101-48802533 > temp.bam
parseBam temp.bam Uninjected_SP15 48802296 48802338; rm temp.bam
mv frameshift_summary_Uninjected_SP15 ../../analysis/real_dataset/data/amplicondivider/Uninjected_SP15.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr16:27335393-27335825 > temp.bam
parseBam temp.bam Uninjected_SP16 27335588 27335630; rm temp.bam
mv frameshift_summary_Uninjected_SP16 ../../analysis/real_dataset/data/amplicondivider/Uninjected_SP16.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr16:27335393-27335825 > temp.bam
parseBam temp.bam Injected_SP16 27335588 27335630; rm temp.bam
mv frameshift_summary_Injected_SP16 ../../analysis/real_dataset/data/amplicondivider/Injected_SP16.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr22:375500-375932 > temp.bam
parseBam temp.bam Injected_SP17 375695 375737; rm temp.bam
mv frameshift_summary_Injected_SP17 ../../analysis/real_dataset/data/amplicondivider/Injected_SP17.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr22:375500-375932 > temp.bam
parseBam temp.bam Uninjected_SP17 375695 375737; rm temp.bam
mv frameshift_summary_Uninjected_SP17 ../../analysis/real_dataset/data/amplicondivider/Uninjected_SP17.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr9:3033508-3033940 > temp.bam
parseBam temp.bam Uninjected_SP2 3033703 3033745; rm temp.bam
mv frameshift_summary_Uninjected_SP2 ../../analysis/real_dataset/data/amplicondivider/Uninjected_SP2.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr9:3033508-3033940 > temp.bam
parseBam temp.bam Injected_SP2 3033703 3033745; rm temp.bam
mv frameshift_summary_Injected_SP2 ../../analysis/real_dataset/data/amplicondivider/Injected_SP2.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr19:16829908-16830340 > temp.bam
parseBam temp.bam Uninjected_SP4 16830103 16830145; rm temp.bam
mv frameshift_summary_Uninjected_SP4 ../../analysis/real_dataset/data/amplicondivider/Uninjected_SP4.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr19:16829908-16830340 > temp.bam
parseBam temp.bam Injected_SP4 16830103 16830145; rm temp.bam
mv frameshift_summary_Injected_SP4 ../../analysis/real_dataset/data/amplicondivider/Injected_SP4.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr19:16840933-16841365 > temp.bam
parseBam temp.bam Uninjected_SP5 16841128 16841170; rm temp.bam
mv frameshift_summary_Uninjected_SP5 ../../analysis/real_dataset/data/amplicondivider/Uninjected_SP5.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr19:16840933-16841365 > temp.bam
parseBam temp.bam Injected_SP5 16841128 16841170; rm temp.bam
mv frameshift_summary_Injected_SP5 ../../analysis/real_dataset/data/amplicondivider/Injected_SP5.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr16:26224221-26224653 > temp.bam
parseBam temp.bam Uninjected_SP6 26224416 26224458; rm temp.bam
mv frameshift_summary_Uninjected_SP6 ../../analysis/real_dataset/data/amplicondivider/Uninjected_SP6.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr16:26224221-26224653 > temp.bam
parseBam temp.bam Injected_SP6 26224416 26224458; rm temp.bam
mv frameshift_summary_Injected_SP6 ../../analysis/real_dataset/data/amplicondivider/Injected_SP6.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr22:26325709-26326141 > temp.bam
parseBam temp.bam Uninjected_SP8_updated2 26325904 26325946; rm temp.bam
mv frameshift_summary_Uninjected_SP8_updated2 ../../analysis/real_dataset/data/amplicondivider/Uninjected_SP8_updated2.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr22:26325709-26326141 > temp.bam
parseBam temp.bam Injected_SP8_updated2 26325904 26325946; rm temp.bam
mv frameshift_summary_Injected_SP8_updated2 ../../analysis/real_dataset/data/amplicondivider/Injected_SP8_updated2.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr14:34698133-34698565 > temp.bam
parseBam temp.bam Injected_apln 34698328 34698370; rm temp.bam
mv frameshift_summary_Injected_apln ../../analysis/real_dataset/data/amplicondivider/Injected_apln.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr14:34698133-34698565 > temp.bam
parseBam temp.bam Uninjected_apln 34698328 34698370; rm temp.bam
mv frameshift_summary_Uninjected_apln ../../analysis/real_dataset/data/amplicondivider/Uninjected_apln.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr1:1474016-1474448 > temp.bam
parseBam temp.bam Uninjected_atp1a1 1474211 1474253; rm temp.bam
mv frameshift_summary_Uninjected_atp1a1 ../../analysis/real_dataset/data/amplicondivider/Uninjected_atp1a1.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr1:1474016-1474448 > temp.bam
parseBam temp.bam Injected_atp1a1 1474211 1474253; rm temp.bam
mv frameshift_summary_Injected_atp1a1 ../../analysis/real_dataset/data/amplicondivider/Injected_atp1a1.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr21:6527220-6527652 > temp.bam
parseBam temp.bam Uninjected_col5al 6527415 6527457; rm temp.bam
mv frameshift_summary_Uninjected_col5al ../../analysis/real_dataset/data/amplicondivider/Uninjected_col5al.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr21:6527220-6527652 > temp.bam
parseBam temp.bam Injected_col5al 6527415 6527457; rm temp.bam
mv frameshift_summary_Injected_col5al ../../analysis/real_dataset/data/amplicondivider/Injected_col5al.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr1:52321028-52321460 > temp.bam
parseBam temp.bam Injected_dand5 52321223 52321265; rm temp.bam
mv frameshift_summary_Injected_dand5 ../../analysis/real_dataset/data/amplicondivider/Injected_dand5.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr1:52321028-52321460 > temp.bam
parseBam temp.bam Uninjected_dand5 52321223 52321265; rm temp.bam
mv frameshift_summary_Uninjected_dand5 ../../analysis/real_dataset/data/amplicondivider/Uninjected_dand5.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr21:44400416-44400848 > temp.bam
parseBam temp.bam Injected_h2afy 44400611 44400653; rm temp.bam
mv frameshift_summary_Injected_h2afy ../../analysis/real_dataset/data/amplicondivider/Injected_h2afy.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr21:44400416-44400848 > temp.bam
parseBam temp.bam Uninjected_h2afy 44400611 44400653; rm temp.bam
mv frameshift_summary_Uninjected_h2afy ../../analysis/real_dataset/data/amplicondivider/Uninjected_h2afy.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr13:6473565-6473997 > temp.bam
parseBam temp.bam Uninjected_h2afy2 6473760 6473802; rm temp.bam
mv frameshift_summary_Uninjected_h2afy2 ../../analysis/real_dataset/data/amplicondivider/Uninjected_h2afy2.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr13:6473565-6473997 > temp.bam
parseBam temp.bam Injected_h2afy2 6473760 6473802; rm temp.bam
mv frameshift_summary_Injected_h2afy2 ../../analysis/real_dataset/data/amplicondivider/Injected_h2afy2.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr10:22947777-22948209 > temp.bam
parseBam temp.bam Uninjected_kdm6bb_563644 22947972 22948014; rm temp.bam
mv frameshift_summary_Uninjected_kdm6bb_563644 ../../analysis/real_dataset/data/amplicondivider/Uninjected_kdm6bb_563644.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr10:22947777-22948209 > temp.bam
parseBam temp.bam Injected_kdm6bb_563644 22947972 22948014; rm temp.bam
mv frameshift_summary_Injected_kdm6bb_563644 ../../analysis/real_dataset/data/amplicondivider/Injected_kdm6bb_563644.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr14:37446879-37447311 > temp.bam
parseBam temp.bam Injected_pitx2 37447074 37447116; rm temp.bam
mv frameshift_summary_Injected_pitx2 ../../analysis/real_dataset/data/amplicondivider/Injected_pitx2.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr14:37446879-37447311 > temp.bam
parseBam temp.bam Uninjected_pitx2 37447074 37447116; rm temp.bam
mv frameshift_summary_Uninjected_pitx2 ../../analysis/real_dataset/data/amplicondivider/Uninjected_pitx2.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr25:16198860-16199292 > temp.bam
parseBam temp.bam Injected_syt9b 16199055 16199097; rm temp.bam
mv frameshift_summary_Injected_syt9b ../../analysis/real_dataset/data/amplicondivider/Injected_syt9b.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr25:16198860-16199292 > temp.bam
parseBam temp.bam Uninjected_syt9b 16199055 16199097; rm temp.bam
mv frameshift_summary_Uninjected_syt9b ../../analysis/real_dataset/data/amplicondivider/Uninjected_syt9b.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr2:56393034-56393466 > temp.bam
parseBam temp.bam Uninjected_upf1 56393229 56393271; rm temp.bam
mv frameshift_summary_Uninjected_upf1 ../../analysis/real_dataset/data/amplicondivider/Uninjected_upf1.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr2:56393034-56393466 > temp.bam
parseBam temp.bam Injected_upf1 56393229 56393271; rm temp.bam
mv frameshift_summary_Injected_upf1 ../../analysis/real_dataset/data/amplicondivider/Injected_upf1.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr9:34746297-34746729 > temp.bam
parseBam temp.bam Injected_utx2 34746492 34746534; rm temp.bam
mv frameshift_summary_Injected_utx2 ../../analysis/real_dataset/data/amplicondivider/Injected_utx2.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr9:34746297-34746729 > temp.bam
parseBam temp.bam Uninjected_utx2 34746492 34746534; rm temp.bam
mv frameshift_summary_Uninjected_utx2 ../../analysis/real_dataset/data/amplicondivider/Uninjected_utx2.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr4:12002066-12002498 > temp.bam
parseBam temp.bam Uninjected_wif1 12002261 12002303; rm temp.bam
mv frameshift_summary_Uninjected_wif1 ../../analysis/real_dataset/data/amplicondivider/Uninjected_wif1.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr4:12002066-12002498 > temp.bam
parseBam temp.bam Injected_wif1 12002261 12002303; rm temp.bam
mv frameshift_summary_Injected_wif1 ../../analysis/real_dataset/data/amplicondivider/Injected_wif1.txt

samtools view -hb ../../analysis/real_dataset/data/uninjected_S2_merged.bam chr4:12009865-12010297 > temp.bam
parseBam temp.bam Uninjected_wif1.2 12010060 12010102; rm temp.bam
mv frameshift_summary_Uninjected_wif1.2 ../../analysis/real_dataset/data/amplicondivider/Uninjected_wif1.2.txt

samtools view -hb ../../analysis/real_dataset/data/injected_S1_merged.bam chr4:12009865-12010297 > temp.bam
parseBam temp.bam Injected_wif1.2 12010060 12010102; rm temp.bam
mv frameshift_summary_Injected_wif1.2 ../../analysis/real_dataset/data/amplicondivider/Injected_wif1.2.txt

