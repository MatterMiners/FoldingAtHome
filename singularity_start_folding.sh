#!/bin/bash
singularity exec /grid/fzk.de/mounts/nfs/software/cms/folding_at_home.img FAHClient --user=GridKa --team=250565 --gpu=false --smp=true --cpus=$TardisDroneCores --max-units=$[1*$TardisDroneCores] --exit-when-done=true
