export CWD=$PWD

###### #Parameters 

# Location of raw data 
export RAW="/xdisk/uschuch/corykeith/sim_mock_comm/viruses/begomovirus/sim_resist/mock_reads"
export OUT_DIR="/xdisk/uschuch/corykeith/mock_ViCC/out"
export PROFILE="/xdisk/uschuch/corykeith/mock_ViCC/profile.txt"

# Location of tools and indices
export BOWTIE="/home/u32/corykeith/tools/bowtie2-2.4.1-linux-x86_64"
export SPADES="/home/u32/corykeith/tools/SPAdes-3.14.1-Linux/bin"
export SEQKIT="/xdisk/uschuch/corykeith/tools/seqkit"
export CSVTK="/xdisk/uschuch/corykeith/tools/csvtk"
export BLASTDB="CWD/blastdb/[database]"
export BLAST1line="/xdisk/uschuch/corykeith/BLAST/BLdb_allsats/BLdb_CLCuD_helper_sats_1line.fa"
export BAMTOOLS="/xdisk/uschuch/corykeith/tools/bin"

#Place to store scripts
export SCRIPT_DIR="$PWD/scripts"
export GATHER="$PWD/scripts"
# User information
export QUEUE="standard"
export GROUP="uschuch"
export MAIL_USER="corykeith@email.arizona.edu"
export MAIL_TYPE="END"


# --------------------------------------------------
# removes directories with name and makes new directory based on variable.
function init_dir {
    for dir in $*; do
        if [ -d "$dir" ]; then
            rm -rf $dir/*
        else
            mkdir -p "$dir"
        fi
    done
}
