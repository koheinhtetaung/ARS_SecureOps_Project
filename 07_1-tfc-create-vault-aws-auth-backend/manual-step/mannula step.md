## Enable and Configure the AWS Auth Backend	 
$ vault auth enable aws
$ vault auth list

$ export access_key="ddfdfdf"
$ export secret_key="ddfd"
$ vault write /auth/aws/config/client access_key=$access_key secret_key=$secret_key
$ vault read /auth/aws/config/client

## Create Policy
$ touch db-policy.hcl
$ vault policy write db-policy db-policy.hcl

## Create a AWS Auth Role
$ vault write auth/aws/role/db-role \
     auth_type=iam \
	 bound_iam_principal_arn=arn:aws:iam::767397769779:role/vault-ec2-auth-role \
	 policies=db-policy
$ vault read auth/aws/role/db-role

## Access to Vault form EC2 instance[configure role instance profile](To request token)
$ export VAULT_ADDR="xxx:8200"
$ export VAULT_NAMESPACE="admin"
$ vault login -method=aws role=db-role

## Using requeted token to access Secret Engine Path(Dyanmic Role/DB Role)
$ export VAULT_Token="hvs.xxxx"
$ vault read aws-master-account/creds/master-adminaccess-role

export AWS_ACCESS_KEY_ID=AKIA2UC3FHN7WNOG23GB
export AWS_SECRET_ACCESS_KEY=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

aws sts get-caller-identity