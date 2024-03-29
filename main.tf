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
#
#    ##Dev env
#    { name = "dev.expense.frontend.backend_url", value = "http://backend-dev.waleapagun.online/", type = "String" },

    ## Common env
    { name = "jenkins_password", value = "6cd663cd072c466aa2499bb9a25f0654", type = "String" },
    { name = "artifactory_username", value = "admin", type = "String" },
    { name = "artifactory_password", value = "Admin123", type = "String" },
    { name = "ssh_username", value = "centos", type = "String" },
    { name = "ssh_password", value = "DevOps321", type = "SecureString" },


    ## RoboShop Dev Env Parameters
    { name = "dev.roboshop.frontend.catalogue_url", value = "http://catalogue-dev.waleapagun.online:80/", type = "String" },
    { name = "dev.roboshop.frontend.cart_url", value = "http://cart-dev.waleapagun.online:80/", type = "String" },
    { name = "dev.roboshop.frontend.user_url", value = "http://user-dev.waleapagun.online:80/", type = "String" },
    { name = "dev.roboshop.frontend.shipping_url", value = "http://shipping-dev.waleapagun.online:80/", type = "String" },
    { name = "dev.roboshop.frontend.payment_url", value = "http://payment-dev.waleapagun.online:80/", type = "String" },
    { name = "dev.roboshop.catalogue.MONGO_URL", value = "mongodb://docdbadmin:roboshop1234@dev-docdb-cluster.cluster-c3rf7skzcvc3.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "String" },
    { name = "dev.roboshop.catalogue.MONGO_ENDPOINT", value = "mongodb-dev.waleapagun.online", type = "String" },
    { name = "dev.roboshop.user.MONGO_URL", value = "mongodb://docdbadmin:roboshop1234@dev-docdb-cluster.cluster-c3rf7skzcvc3.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "String" },
    { name = "dev.roboshop.user.REDIS_HOST", value = "dev-elasticache-cluster.ngpfhi.0001.use1.cache.amazonaws.com", type = "String" },
    { name = "dev.roboshop.cart.REDIS_HOST", value = "dev-elasticache-cluster.ngpfhi.0001.use1.cache.amazonaws.com", type = "String" },
    { name = "dev.roboshop.cart.CATALOGUE_HOST", value = "catalogue-dev.waleapagun.online", type = "String" },
    { name = "dev.roboshop.cart.CATALOGUE_PORT", value = "80", type = "String" },
    { name = "dev.roboshop.shipping.DB_HOST", value = "mysql-dev.waleapagun.online", type = "String" },
    { name = "dev.roboshop.shipping.DB_USER", value = "root", type = "String" },
    { name = "dev.roboshop.shipping.CART_ENDPOINT", value = "cart-dev.waleapagun.online:80", type = "String" },
    { name = "dev.roboshop.payment.CART_HOST", value = "cart-dev.waleapagun.online", type = "String" },
    { name = "dev.roboshop.payment.CART_PORT", value = "80", type = "String" },
    { name = "dev.roboshop.payment.USER_HOST", value = "user-dev.waleapagun.online", type = "String" },
    { name = "dev.roboshop.payment.USER_PORT", value = "80", type = "String" },
    { name = "dev.roboshop.payment.AMQP_HOST", value = "rabbitmq-dev.waleapagun.online", type = "String" },
    { name = "dev.roboshop.payment.AMQP_USER", value = "roboshop", type = "String" },
    { name = "dev.roboshop.dispatch.AMQP_HOST", value = "rabbitmq-dev.waleapagun.online", type = "String" },
    { name = "dev.roboshop.dispatch.AMQP_USER", value = "roboshop", type = "String" },

    ## DB Endpoints
    { name = "dev.roboshop.docdb.endpoint", value = "dev-docdb-cluster.cluster-c3rf7skzcvc3.us-east-1.docdb.amazonaws.com", type = "String" },
    { name = "dev.roboshop.rds.endpoint", value = "dev-mysql.cluster-c3rf7skzcvc3.us-east-1.rds.amazonaws.com", type = "String" },

    ##password
    { name = "dev.roboshop.mysql.DB_PASS", value = "RoboShop@1", type = "SecureString" },
    { name = "dev.roboshop.shipping.DB_PASS", value = "RoboShop@1", type = "SecureString" },
    { name = "dev.roboshop.rabbitmq.MQ_PASS", value = "roboshop123", type = "SecureString" },
    { name = "dev.roboshop.payment.AMQP_PASS", value = "roboshop123", type = "SecureString" },
    { name = "dev.roboshop.dispatch.AMQP_PASS", value = "roboshop123", type = "SecureString" },

    { name = "dev.roboshop.rds.master_username", value = "mysqlrdsadmin", type = "String" },
    { name = "dev.roboshop.rds.master_password", value = "roboshop1234", type = "SecureString" },
    { name = "dev.roboshop.docdb.master_username", value = "docdbadmin", type = "String" },
    { name = "dev.roboshop.docdb.master_password", value = "roboshop1234", type = "SecureString" },

    ## RoboShop Prod Env Parameters
    { name = "prod.roboshop.frontend.catalogue_url", value = "http://catalogue-prod.waleapagun.online:80/", type = "String" },
    { name = "prod.roboshop.frontend.cart_url", value = "http://cart-prod.waleapagun.online:80/", type = "String" },
    { name = "prod.roboshop.frontend.user_url", value = "http://user-prod.waleapagun.online:80/", type = "String" },
    { name = "prod.roboshop.frontend.shipping_url", value = "http://shipping-prod.waleapagun.online:80/", type = "String" },
    { name = "prod.roboshop.frontend.payment_url", value = "http://payment-prod.waleapagun.online:80/", type = "String" },
    { name = "prod.roboshop.catalogue.MONGO_URL", value = "mongodb://docdbadmin:roboshop1234@prod-docdb-cluster.cluster-c3rf7skzcvc3.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "String" },
    { name = "prod.roboshop.catalogue.DOCUMENTDB", value = "true", type = "String" },
    { name = "prod.roboshop.user.DOCUMENTDB", value = "true", type = "String" },
    { name = "prod.roboshop.catalogue.MONGO_ENDPOINT", value = "mongodb-prod.waleapagun.online", type = "String" },
    { name = "prod.roboshop.user.MONGO_URL", value = "mongodb://docdbadmin:roboshop1234@prod-docdb-cluster.cluster-c3rf7skzcvc3.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "String" },
    { name = "prod.roboshop.user.REDIS_HOST", value = "prod-elasticache-cluster.ngpfhi.0001.use1.cache.amazonaws.com", type = "String" },
    { name = "prod.roboshop.cart.REDIS_HOST", value = "prod-elasticache-cluster.ngpfhi.0001.use1.cache.amazonaws.com", type = "String" },
    { name = "prod.roboshop.cart.CATALOGUE_HOST", value = "catalogue", type = "String" },
    { name = "prod.roboshop.cart.CATALOGUE_PORT", value = "80", type = "String" },
    { name = "prod.roboshop.shipping.DB_HOST", value = "mysql-prod.waleapagun.online", type = "String" },
    { name = "prod.roboshop.shipping.DB_USER", value = "root", type = "String" },
    { name = "prod.roboshop.shipping.CART_ENDPOINT", value = "cart:80", type = "String" },
    { name = "prod.roboshop.payment.CART_HOST", value = "cart", type = "String" },
    { name = "prod.roboshop.payment.CART_PORT", value = "80", type = "String" },
    { name = "prod.roboshop.payment.USER_HOST", value = "user", type = "String" },
    { name = "prod.roboshop.payment.USER_PORT", value = "80", type = "String" },
    { name = "prod.roboshop.payment.AMQP_HOST", value = "rabbitmq-prod.waleapagun.online", type = "String" },
    { name = "prod.roboshop.payment.AMQP_USER", value = "roboshop", type = "String" },
    { name = "prod.roboshop.dispatch.AMQP_HOST", value = "rabbitmq-prod.waleapagun.online", type = "String" },
    { name = "prod.roboshop.dispatch.AMQP_USER", value = "roboshop", type = "String" },

    ## DB Endpoints
    { name = "prod.roboshop.docdb.endpoint", value = "prod-docdb-cluster.cluster-c3rf7skzcvc3.us-east-1.docdb.amazonaws.com", type = "String" },
    { name = "prod.roboshop.rds.endpoint", value = "prod-mysql.cluster-c3rf7skzcvc3.us-east-1.rds.amazonaws.com", type = "String" },

    ##password
    { name = "prod.roboshop.mysql.DB_PASS", value = "RoboShop@1", type = "SecureString" },
    { name = "prod.roboshop.shipping.DB_PASS", value = "RoboShop@1", type = "SecureString" },
    { name = "prod.roboshop.rabbitmq.MQ_PASS", value = "roboshop123", type = "SecureString" },
    { name = "prod.roboshop.payment.AMQP_PASS", value = "roboshop123", type = "SecureString" },
    { name = "prod.roboshop.dispatch.AMQP_PASS", value = "roboshop123", type = "SecureString" },

    { name = "prod.roboshop.rds.master_username", value = "mysqlrdsadmin", type = "String" },
    { name = "prod.roboshop.rds.master_password", value = "roboshop1234", type = "SecureString" },
    { name = "prod.roboshop.docdb.master_username", value = "docdbadmin", type = "String" },
    { name = "prod.roboshop.docdb.master_password", value = "roboshop1234", type = "SecureString" },

    ## App Versions
    { name = "prod.roboshop.frontend.app_version", value = "1.0.1", type = "String" },
    { name = "prod.roboshop.catalogue.app_version", value = "1.0.1", type = "String" },
    { name = "prod.roboshop.user.app_version", value = "1.0.2", type = "String" },
    { name = "prod.roboshop.cart.app_version", value = "1.0.1", type = "String" },
    { name = "prod.roboshop.shipping.app_version", value = "1.0.0", type = "String" },
    { name = "prod.roboshop.payment.app_version", value = "1.0.0", type = "String" },

  ]

}
## Note: Ideally we don't keep passwords in GIT REPOS, Those will be created manually. Secret management of creating secrets is most of the time is manual