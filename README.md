# amplican_manuscript

#### About

Contains scripts and files required to replicate paper of ampliCan. Most data is publically available, some is automatically generated through scripts. Description of figures can be found in the supplement to the ampliCan paper and in the main text.  

#### Installation

Software that is needed to replicate this study (most of it comes from [CrispRVariants](https://github.com/markrobinsonuzh/CrispRVariants_manuscript) paper, we add couple of R packages only).

- Install amplican package from [Bioconductor](http://bioconductor.org/packages/amplican) (version 1.3.3 was used, but using current release might be wiser), or you can find source version in software folder. Instalation through bioconductor will automatically download and install required packages and save you trouble. Additionally to amplican dependencies you will need these R packages: CrispRVariants (1.8.0), BiocParallel (1.14.2), Biostrings (2.48.0), BSgenome.Drerio.UCSC.danRer7 (1.4.0), BSgenome.Hsapiens.UCSC.hg19 (1.4.1), gdata (2.18.0), GenomicAlignments (1.16.0), GenomicFeatures (1.32.2), GenomicRanges (1.32.6), ggplot2 (3.0.0), grid (3.5.0), gridExtra (2.3), reshape2 (1.4.2), Rsamtools (1.32.2), rtracklayer (1.40.5), seqinr (3.4-5), scales (1.0.0), ShortRead (1.38.0), data.table (1.11.4).  
- Install and make sure these software are in your PATH: bwa (0.7.12-r1039), seqprep, pear (v0.9.10), blat (version 35x1), CRISPResso (1.0.13), art_illumina (2.5.8).  
- Install [sam2pairwise](http://www.github.com/mlafave/sam2pairwise) into software/sam2pairwise folder.  
- Install [ampliconDIVider](https://github.com/mlafave/ampliconDIVider) into software/ampliconDIVider-master.  
- Dependencies for python scripts: argparse, regex, gzip, os and sys.  
- Rest of the needed scripts and software you can find in "software" folder.  
- Remember to change paths, wherever possible paths are relative to the main folder and no change is required.  
- Download and put danRer7.fa to analysis/idx and build indexes.  

#### Files

* figures - contains all figures from the main paper and supplement  
* analysis - contains scripts in R and bash  
    - ```figure_2.R``` Will create Figure 2 from the paper and some of other supplementary figures.  
    - ```filter_example.R``` Will create Figure with the example of filtering used employed by ampliCan.  
    - ```exmple_alignments.R``` Create and test alignments using Needleman-Wunch,
    which is ampliCan approach.  
    - ```replicate_CrispRVariants.sh``` Will replicate Figure 10 from Supplementary of 
    CrispRVariants manuscript with addition of ampliCan.  
    - ```real_offtargets.sh``` Will test for off-targets as in CrispRVariants without
    creating mismatches in the primers, also set guide position in the middle of 
    amplicon sequence and reduce the size of amplicon to 150bp to more reflect 
    what is usually designed in real datasets.  
    - ```indel_size.sh``` Will disable low chance of large insertions and deletions
    that was set in CrispRVariants, and also test for higher chance of large indels.  
    - ```hdr.sh``` Creates benchmark data for HDR with donor templates with mismatches,
    deletions and insertions of sizes from 5 to 70.  
    - ```real_dataset.sh``` Will run analysis for the real data PRJNA245510 BioProject, run 1.  
    - ```plot_fwd_rve_disagreement``` Will plot how often forward and reverse reads are in disagreement.  
    - ```make_comparison_normalized.Rmd``` Will plot all normalization examples.  
    - ```configs_amplicon_runs``` Contains all amplican configuration files that have been used for not simulated datasets. Default amplican parameters were used during this analysis.  
* software - Put relevant software sam2pairwise and ampliconDIVider-master here.
