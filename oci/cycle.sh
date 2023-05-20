#!/bin/zsh
# Simple script to re-run testing quicker
PORT=$(grep port temp.tfvars | awk {'print $3'})
TOOL=$(grep tool temp.tfvars | awk {'print $3'} | tr -d '"')
TEST=$(grep test temp.tfvars | awk {'print $3'} | tr -d '"')
for i in {1.."$1"}
do
    rm -f timings.txt
    touch timings.txt
    ncat -k -l -p "$PORT" >> timings.txt &
    PID="$!"
    terraform plan -var-file="temp.tfvars" -var="test=$2"
    terraform apply -var-file="temp.tfvars" -var="test=$2" -auto-approve
    VM_COUNT=$(grep vm_count temp.tfvars | awk {'print $3'})
    ANS_COUNT=0
    while [[ "$ANS_COUNT" != "$VM_COUNT" ]]
    do
        sleep 3
        ANS_COUNT=$(cat timings.txt | wc -l)
        echo "$ANS_COUNT" 
        echo "$VM_COUNT"
    done
    echo "done"
    terraform destroy -var-file="temp.tfvars" -auto-approve
    cat timings.txt >> "$TOOL-$2.txt"
    rm -f timings.txt
    kill "$PID"
done
