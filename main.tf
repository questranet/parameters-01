resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  type  = var.parameters[count.index].type
  value = var.parameters[count.index].value
}

variable "parameters" {
  default = [
    { name = "prod.rds.master_password", value = "expenseprod1234", type = "SecureString" },
    { name = "prod.rds.master_username", value = "mysqlrdsadmin", type = "String" },
    { name = "prod.expense.frontend.backend_url", value = "http://backend-prod.waleapagun.online/", type = "String" },
    { name = "prod.rds.endpoint", value = "prod-mysql.cluster-c3rf7skzcvc3.us-east-1.rds.amazonaws.com", type = "String" },
    { name = "prod.backend.app_version", value = "1.0.0", type = "String" },
    { name = "prod.frontend.app_version", value = "1.0.0", type = "String" },

    ##Dev env
    { name = "dev.expense.frontend.backend_url", value = "http://backend-dev.waleapagun.online/", type = "String" },

    ## Common env
    { name = "jenkins_password", value = "5393b3b052b14334a013ab2bcb92dec9", type = "String" }
  ]
}

## Note: Ideally we don't keep passwords in GIT REPOS, Those will be created manually. Secret management of creating secrets is most of the time is manual