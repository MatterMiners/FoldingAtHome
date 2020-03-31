#!/bin/bash
singularity exec /grid/fzk.de/mounts/nfs/software/cms/folding_at_home.img FAHClient --user=GridKa --team=250565 --gpu=false --smp=true --cpus=$TardisDroneCores --max-units=$[1*$TardisDroneCores] --exit-when-done=true &

PID=$!

sleep 600 && grep "Running FahCore" log.txt || kill -9 ${PID}

wait ${PID}
