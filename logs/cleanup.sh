(rg -N -I -e '\d+.[0-9][0-9]' *.log | rg .) | awk '{s=$1+$2} {print s}'
