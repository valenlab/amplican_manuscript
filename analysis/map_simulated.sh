cd $1
index="../../idx/danRer7.fa"
for r1 in *_sim1.fq
do
  r2="${r1/sim1/sim2}"
  out="${r1/_sim*/}"
  bwa mem $index $r1 $r2 | ~/Soft/samtools1.7/bin/samtools view -Sb - > ${out}_temp.bam
  ~/Soft/samtools1.7/bin/samtools sort ${out}_temp.bam -O BAM -o ${out}.bam && rm ${out}_temp.bam
  ~/Soft/samtools1.7/bin/samtools index ${out}.bam
done
cd ../../
