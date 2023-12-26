resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  type  = var.parameters[count.index].type
  value = var.parameters[count.index].value
  overwrite = true
  key_id = "arn:aws:kms:us-east-1:008089408493:key/efc217b5-8630-4840-a8ef-6c335a037cc1"
}

variable "parameters" {
  default = [
#    { name = "prod.rds.master_password", value = "expenseprod1234", type = "SecureString" },
#    { name = "prod.rds.master_username", value = "mysqlrdsadmin", type = "String" },
#    { name = "prod.expense.frontend.backend_url", value = "http://backend-prod.waleapagun.online/", type = "String" },
#    { name = "prod.rds.endpoint", value = "prod-mysql.cluster-c3rf7skzcvc3.us-east-1.rds.amazonaws.com", type = "String" },
#    { name = "prod.backend.app_version", value = "1.0.0", type = "String" },
#    { name = "prod.frontend.app_version", value = "1.0.1", type = "String" },

    ##Dev env
#    { name = "dev.expense.frontend.backend_url", value = "http://backend-dev.waleapagun.online/", type = "String" },

    ## Common env
    { name = "jenkins_password", value = "6cd663cd072c466aa2499bb9a25f0654", type = "String" },
    { name = "artifactory_username", value = "admin", type = "String" },
    { name = "artifactory_password", value = "Admin123", type = "String" },
    { name = "ssh_username", value = "centos", type = "String" },
    { name = "ssh_password", value = "DevOps321", type = "SecureString" },

    ## RoboShop Dev Env Parameters
    { name = "dev.roboshop.frontend.catalogue_url", value = "http://catalogue-dev.waleapagun.online:8080/", type = "String" },
    { name = "dev.roboshop.frontend.cart_url", value = "http://cart-dev.waleapagun.online:8080/", type = "String" },
    { name = "dev.roboshop.frontend.user_url", value = "http://user-dev.waleapagun.online:8080/", type = "String" },
    { name = "dev.roboshop.frontend.shipping_url", value = "http://shipping-dev.waleapagun.online:8080/", type = "String" },
    { name = "dev.roboshop.frontend.payment_url", value = "http://payment-dev.waleapagun.online:8080/", type = "String" },
    { name = "dev.roboshop.catalogue.MONGO_URL", value = "mongodb://mongodb-dev.waleapagun.online:27017/catalogue", type = "String" },
    { name = "dev.roboshop.catalogue.MONGO_ENDPOINT", value = "mongodb://mongodb-dev.waleapagun.online", type = "String" },
    { name = "dev.roboshop.catalogue.MONGO_URL", value = "mongodb://mongodb-dev.waleapagun.online:27017/users", type = "String" },
    { name = "dev.roboshop.catalogue.REDIS_HOST", value = "redis-dev.waleapagun.online", type = "String" },
    { name = "dev.roboshop.cart.REDIS_HOST", value = "redis-dev.waleapagun.online", type = "String" },
    { name = "dev.roboshop.cart.CATALOGUE_HOST", value = "catalogue-dev.waleapagun.online", type = "String" },
    { name = "dev.roboshop.cart.CATALOGUE_PORT", value = "8080", type = "String" },



    ##password
    { name = "dev.roboshop.mysql.DB_PASS", value = "RoboShop@1", type = "SecureString" },

  ]
}

## Note: Ideally we don't keep passwords in GIT REPOS, Those will be created manually. Secret management of creating secrets is most of the time is manual