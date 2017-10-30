# amplican_manuscript

#### About

Contains scripts and files required to replicate paper of ampliCan. Most data is publically available, some is automatically generated through scripts. Description of figures can be found in the supplement to the ampliCan paper and in the main text.  

#### Installation

Software that is needed to replicate this study (most of it comes from [CrispRVariants](https://github.com/markrobinsonuzh/CrispRVariants_manuscript) paper, we add couple of R packages only).

- Install amplican package from [Bioconductor](http://bioconductor.org/packages/amplican) (version 0.99.105 was used, but using current release might be wiser), or you can find source version in software folder. Instalation through bioconductor will automatically download and install required packages and save you trouble. Additionally to amplican dependencies you will need these R packages: CrispRVariants (1.4.0), BiocParallel (1.10.1), Biostrings (2.44.2), BSgenome.Drerio.UCSC.danRer7 (1.4.0), BSgenome.Hsapiens.UCSC.hg19 (1.4.0), gdata (2.18.0), GenomicAlignments (1.12.1), GenomicFeatures (1.28.4), GenomicRanges (1.28.4), ggplot2 (2.2.1.9000), grid (3.4.2), gridExtra (2.2.1), reshape2 (1.4.2), Rsamtools (1.28.0), rtracklayer (1.36.4), seqinr (3.4-5), scales (0.5.0), ShortRead (1.34.0), data.table (1.10.4).  
- Install and make sure these software are in your PATH: bwa (0.7.12-r1039), seqprep, pear (v0.9.10), blat (version 35x1), CRISPResso (1.0.8), art_illumina (2.5.8).  
- Install [sam2pairwise](http://www.github.com/mlafave/sam2pairwise) into software/sam2pairwise folder.  
- Install [ampliconDIVider](https://github.com/mlafave/ampliconDIVider) into software/ampliconDIVider-master.  
- Dependencies for python scripts: argparse, regex, gzip, os and sys.  
- Rest of the needed scripts and software you can find in "software" folder.  
- Remember to change paths, wherever possible paths are relative to the main folder and no change is required.  
- Download and put danRer7.fa to analysis/idx and build indexes.  

#### Files

* figures - contains all figures from the main paper and supplement  
* analysis - contains scripts in R and bash  
    - ```test_bwa``` Contains scripts that allow to test alignments created by bwa, after running run_bwa.sh check e.aln to see alignments in human readable form.  
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
    - ```primer_dimer.R``` Will test for PRIMER_DIMER contamination in estimating true indel efficiency.  
    - ```fwd_rve_unambigous.R``` Will plot how often forward and reverse reads are in disagreement.  
    - ```plot_normalization_examples.R``` Will plot all normalization examples.  
