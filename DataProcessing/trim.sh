##Can modify this for use as an array or as a slurmscript. 
##It didn't take very long to run on my local system so I did it there.

mkdir trimmed

for file in $(ls /mnt/iguana/MECU/Data_Shared_Iguana/20190918GrayFoxGBS2-3/Data/Project_BSSP_L4_GF2/Demultiplexed/*.gz)
do perl /usr/bin/ngsShoRT_2.2/ngsShoRT.pl -t 2 -se ${file} -5a_f i-m -o ./trimmed -methods lqr -lqs 2 -lq_p 50
done

#This script uses ngsShoRT to specify the use of two threads (-t 2)
#single end reads (-se)
#trim off any remaining 5’ adapter sequences that are illumina multiplex specific (-5a_f i-m)
#and trims reads with >50% of bases having a quality score of <2 (-methods lqr -lqs 2 -lq_p 50)
