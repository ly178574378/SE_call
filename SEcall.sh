<SE_call.sh>
#easy to run ROSE in other species
#install ROSE
wget https://bitbucket.org/young_computation/rose/get/1a9bb86b5464.zip
unzip 1a9bb86b5464.zip
rename $1 rose $1
#select your species gff from ucsc 
cp $genome_gff $rose/annotation/|chmod 777 
#add your species into ROSE_main.py
genomeDict = "$species"..........
#make your enhancer bedfile into GFF
awk 'BEGIN {FS="\t" ; OFS="\t"}{print $1,enhancer_"NR","your",$2,$3,".",".",".",".","NR"}'  your_enhancer.bed >your_enhancer.gff
#Let's go
python ROSE_main.py -g "$species" -i your_enhancer.gff -r your_IP.bam -o your_out_put -c your Input.bam
