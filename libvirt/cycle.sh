#!/bin/zsh
# Simple script to re-run testing quicker
rm -f timings.txt
terraform init
terraform plan -var-file="temp.tfvars"
touch timings.txt
ncat -k -l -p 9566 >> timings.txt &
terraform apply -var-file="temp.tfvars" -auto-approve
VM_COUNT=$(grep vm_count temp.tfvars | awk {'print $3'})
ANS_COUNT=0
while [[ "$ANS_COUNT" != "$VM_COUNT" ]]
do
    sleep 3
    ANS_COUNT=$(cat timings.txt | wc -l)
    echo "$ANS_COUNT" 
    echo "$VM_COUNT"
done
killall -q ncat
echo "done"
terraform destroy -var-file="temp.tfvars" -auto-approve
