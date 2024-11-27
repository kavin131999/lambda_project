function_name = "hello-world-3"
description          = "Example Lambda function"
handler       = "lambda_function.lambda_handler"
memory_size          = "128"
timeout              = "2"
lambda_iam_role      = "arn:aws:iam::058264502510:role/service-role/hello-world-role-dpsffw0x"
runtime              = "python3.12"
artifact_path        = "python/lambda_function.zip"
s3_bucket            = "kavin-lambda-bucket-1"
s3_key               = "scripts/lambda_code.zip"
s3_file_upload      =  "true"
#filename            = "python/lambda_function.zip"
# environment_variables = {
#   ENV_VAR1 = "value1"
#   ENV_VAR2 = "value2"
# }
# subnet_ids = ["subnet-12345678"]
# security_group_ids = ["sg-12345678"]
# publish = true
