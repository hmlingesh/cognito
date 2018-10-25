
aws cognito-idp admin-update-user-attributes \
    --user-pool-id $1 --username $2 --user-attributes '[{"Name" : "custom:test","Value" : "test"}]'




