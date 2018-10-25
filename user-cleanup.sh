USER_POOL_ID=$1
while read p; do
  echo " updating address of $p"
aws cognito-idp admin-delete-user \
    --user-pool-id $USER_POOL_ID --username $p 

done <list-admin-user.txt



