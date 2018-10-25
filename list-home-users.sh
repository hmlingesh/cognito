aws cognito-idp list-users --user-pool-id $1 | jq -r '.Users[].Username' > list-home-user.txt



