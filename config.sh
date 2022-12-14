export CWD=$PWD

###### #Parameters 

# Location of raw data 
export RAW="/CWD/test_data/sim_resist/mock_reads"
export OUT_DIR="/CWD/out"
export PROFILE="/CWD/profile.txt"

# Location of tools and indices
export BOWTIE="CWD/tools/bowtie2-2.4.1-linux-x86_64"
export SPADES="CWD/tools/SPAdes-3.15.5-Linux/bin"
export SEQKIT="CWD/tools/seqkit"
export CSVTK="CWD/tools/csvtk"
export BLASTDB="CWD/blastdb/[database]"
export BLAST1line="CWD/blastdb/[database]_1line.fa"
export BAMTOOLS="CWD/tools/bin"

#Place to store scripts
export SCRIPT_DIR="$PWD/scripts"
export GATHER="$PWD/scripts"
# User information
export QUEUE="standard"
export GROUP="[group_name]"
export MAIL_USER="[user_email@email.com]"
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
