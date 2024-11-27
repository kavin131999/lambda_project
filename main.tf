module "lambda" {
  source          = "../terraform-lambda-module"
  function_name         = var.function_name
  description           = var.description
  lambda_iam_role       = var.lambda_iam_role
  handler               = var.handler
  memory_size           = var.memory_size
  runtime               = var.runtime
  timeout               = var.timeout
  publish               = var.publish
  kms_key_arn           = var.kms_key_arn
  
  filename =  var.filename
  # Deployment options 
  artifact_path         = var.artifact_path
  source_code_hash      = try(filebase64sha256(var.filename), filebase64sha256(var.artifact_path))
  s3_file_upload        = var.s3_file_upload
  s3_bucket             = var.s3_bucket
  s3_key                = var.s3_key
  
  
  #environment_variables = var.environment_variables
  #subnet_ids            = var.subnet_ids
  #security_group_ids    = var.security_group_ids

  # Logging configuration
  #logging_log_format            = var.logging_log_format
  #logging_application_log_level = var.logging_application_log_level
  #logging_system_log_level      = var.logging_system_log_level
}