OSname=`head -n1 /etc/SuSE-brand`
OSver=`cat /etc/*release | grep ^VERSION | cut -d' ' -f3`.`cat /etc/*release | grep ^PATCHLEVEL | cut -d' ' -f3`
CUver=`/usr/local/cuda/bin/nvcc --version | grep release | cut -d' ' -f5 | cut -d',' -f1`

PS1='\[\e[0;31m\]\u@\h\[\e[m\] \[\e[1;33m\]$OSname $OSver Cuda $CUver \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
