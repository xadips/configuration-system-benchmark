#!/bin/bash
terraform output | rg -e '\d+.*' | tr -d '",'  | awk '{$1=$1;print}' > ../logs/ips.txt
