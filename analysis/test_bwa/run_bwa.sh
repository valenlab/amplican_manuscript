bwa index e_genome.fa
art_illumina -amp -rs 30 -f 1 -l 100 -p -ss MSv1 -na -i e_seq.fa -o e_seq
bwa mem e_genome.fa e_seq1.fq e_seq2.fq | samtools view -Sb - > temp.bam
samtools sort temp.bam e_aln && rm temp.bam
samtools index e_aln.bam
samtools view e_aln.bam | ../../software/sam2pairwise/src/sam2pairwise > e.aln
