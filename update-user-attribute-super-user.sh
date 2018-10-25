USER_POOL_ID=$1
while read p; do
  echo " updating address of $p"
aws cognito-idp admin-update-user-attributes \
    --user-pool-id $USER_POOL_ID --username $p --user-attributes '[{"Name" : "custom:address3","Value" : "{\"address1\":\"dasdas\",\"address2\":\"asdasd\",\"city\":\"asdasd\",\"state\":\"Alabama\",\"zip\":\"676767\",\"country\":\"US\",\"division\":\"sasdasd\",\"primaryPhone\":\"+910000000000\",\"open\":true}"}]'

aws cognito-idp admin-update-user-attributes \
    --user-pool-id $USER_POOL_ID --username $p --user-attributes '[{"Name" : "custom:address4","Value" : "{\"address1\":\"dasdas\",\"address2\":\"asdasd\",\"city\":\"asdasd\",\"state\":\"Alabama\",\"zip\":\"676767\",\"country\":\"US\",\"division\":\"sasdasd\",\"primaryPhone\":\"+910000000000\",\"open\":true}"}]'
aws cognito-idp admin-update-user-attributes \
    --user-pool-id $USER_POOL_ID --username $p --user-attributes '[{"Name" : "custom:address5","Value" : "{\"address1\":\"dasdas\",\"address2\":\"asdasd\",\"city\":\"asdasd\",\"state\":\"Alabama\",\"zip\":\"676767\",\"country\":\"US\",\"division\":\"sasdasd\",\"primaryPhone\":\"+910000000000\",\"open\":true}"}]'
done <list-home-user.txt



