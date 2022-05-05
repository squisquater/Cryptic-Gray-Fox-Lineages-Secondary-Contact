#I got this script from Stefano Capomaccio, found here: https://www.researchgate.net/post/Does_anyone_know_a_method_to_convert_a_ped_SNP_dataset_from_diploid_individuals_to_a_format_for_DNAsp_with_the_IUPAC_nucleotide_ambiguity_codes
# Convert PLINK (ped) to FASTA with IUPAC code For Lorenzo Raggi 24-02-2015

#Here is an example for how to run the perl script [perl ped_to_iupac_onestep.pl ././input.ped > output.fasta]

open (INPEDFILE,$ARGV[0]) || die; # open the ped file
# The inverse of %IUB
%REV_IUB = (
        AA => 'A',
        TT => 'T',
        UU => 'U',
        CC => 'C',
        GG => 'G',
        AC => 'M',
        CA => 'M',
        AG => 'R',
        GA => 'R',
        AT => 'W',
        TA => 'W',
        CG => 'S',
        GC => 'S',
        CT => 'Y',
        TC => 'Y',
        GT => 'K',
        TG => 'K',
        NN => 'N'
        ); while ($row=<INPEDFILE>) {
        @temp=split(/\s/,$row);
        @columns = @temp[6..$#temp];
        print ">@temp[0]_@temp[1]\n";
        while(my ($allele1,$allele2) = splice(@columns,0,2)) {
                $genotype = $allele1 . $allele2;
                if ($genotype eq "00") { $genotype = "NN" };
                print "$REV_IUB{$genotype}";
        }
        print "\n"
}
