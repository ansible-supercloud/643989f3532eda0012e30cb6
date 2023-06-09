variable "cp4i-version-dependency_cp4i_version" {
  type = string
  description = "The CP4i Version. Possible values are (2021_4_1 , 2022_1_1). If no values is set by default this will refer to Latest available CP4i version"
  default = "2022_2_1"
}
variable "gitops-cp-ace_namespace" {
  type = string
  description = "The namespace where the application should be deployed"
  default = "openshift-operators"
}
variable "gitops-cp-ace_catalog_namespace" {
  type = string
  description = "The namespace where the catalog has been deployed"
  default = "openshift-marketplace"
}
variable "gitops-cp-ace_platform_navigator_name" {
  type = string
  description = "The name of the platform navigator instance"
  default = ""
}
variable "gitops_host" {
  type = string
  description = "The host name of the gitops repository (GitHub, Github Enterprise, Gitlab, Bitbucket, Azure DevOps, and Gitea servers are supported)."
  default = ""
}
variable "gitops_org" {
  type = string
  description = "The organization on the git server where the repsitory will be located. If not provided the org will default to the username."
  default = ""
}
variable "gitops_project" {
  type = string
  description = "The Azure DevOps project in the git server. This value is only applied for Azure DevOps servers."
  default = ""
}
variable "gitops_repo" {
  type = string
  description = "The name of the repository in the org on the git server."
  default = ""
}
variable "gitops_username" {
  type = string
  description = "The username used to access the git server."
  default = ""
}
variable "gitops_token" {
  type = string
  description = "The token used to access the git server."
  default = ""
}
variable "gitops_branch" {
  type = string
  description = "The name of the branch in the gitops repository where the config will be stored."
  default = "main"
}
variable "gitops_server_name" {
  type = string
  description = "The name of the server the configuration with which the configuration will be associated."
  default = "default"
}
variable "gitops_ca_cert" {
  type = string
  description = "The ca certificate used to sign the self-signed certificate used by the git server, if applicable."
  default = ""
}
variable "gitops_ca_cert_file" {
  type = string
  description = "The file containing the ca certificate used to sign the self-signed certificate used by the git server, if applicable."
  default = ""
}
variable "gitops-cp-ace-designer_is_map_assist_required" {
  type = bool
  description = "To enable mapassist feature"
  default = false
}
variable "gitops-cp-ace-designer_ace_designer_instance_name" {
  type = string
  description = "If ACE Designer instance name needed to be overridden"
  default = ""
}
variable "gitops-cp-apic_profile" {
  type = string
  description = "apic profile template"
  default = ""n1xc7.m48" "
}
variable "entitlement_key" {
  type = string
  description = "The entitlement key used to access the CP4I images in the container registry. Visit https://myibm.ibm.com/products-services/containerlibrary to get the key"
}
variable "gitops-cp-apic_catalog" {
  type = string
  description = "The catalog source that should be used to deploy the operator"
  default = "ibm-operator-catalog"
}
variable "gitops-cp-apic_catalog_namespace" {
  type = string
  description = "The namespace where the catalog has been deployed"
  default = "openshift-marketplace"
}
variable "gitops-cp-apic-operator_namespace" {
  type = string
  description = "The namespace where the application should be deployed"
  default = "openshift-operators"
}
variable "gitops-cp-apic-operator_catalog_namespace" {
  type = string
  description = "The namespace where the catalog has been deployed"
  default = "openshift-marketplace"
}
variable "gitops-cp-es-operator_namespace" {
  type = string
  description = "The namespace where the application should be deployed"
  default = "openshift-operators"
}
variable "gitops-cp-es-operator_catalog_namespace" {
  type = string
  description = "The namespace where the catalog has been deployed"
  default = "openshift-marketplace"
}
variable "gitops-cp-event-streams_requestIbmServices_iam" {
  type = bool
  description = "IAM services"
  default = true
}
variable "gitops-cp-event-streams_requestIbmServices_monitoring" {
  type = bool
  description = "Monitoring services"
  default = true
}
variable "gitops-cp-event-streams_kafka_replicas" {
  type = number
  description = "Number of kafka replicas"
  default = 3
}
variable "gitops-cp-event-streams_zookeeper_replicas" {
  type = number
  description = "Number of zookeeper replicas"
  default = 3
}
variable "gitops-cp-event-streams_es_version" {
  type = string
  description = "Version of Event streams to be installed"
  default = "11.0.2"
}
variable "gitops-cp-event-streams_cpulimits" {
  type = string
  description = "CPU limits for the kafka instance"
  default = "1"
}
variable "gitops-cp-event-streams_cpurequests" {
  type = string
  description = "CPU requests for the kafka instance"
  default = "100m"
}
variable "gitops-cp-event-streams_memorylimits" {
  type = string
  description = "Memory limits for the kafka instance"
  default = "2Gi"
}
variable "gitops-cp-event-streams_memoryrequests" {
  type = string
  description = "Memory requests for the kafka instance"
  default = "128Mi"
}
variable "gitops-cp-event-streams_kafka_storagetype" {
  type = string
  description = "Storage type for kafka"
  default = "persistent-claim"
}
variable "gitops-cp-event-streams_zookeeper_storagetype" {
  type = string
  description = "Storage type for zookeeper"
  default = "persistent-claim"
}
variable "gitops-cp-event-streams_kafka_storagesize" {
  type = string
  description = "Storage size - applicable only for persistent storage type"
  default = "10Gi"
}
variable "gitops-cp-event-streams_zookeeper_storagesize" {
  type = string
  description = "Storage size - applicable only for persistent storage type"
  default = "4Gi"
}
variable "gitops-cp-event-streams_service_name" {
  type = string
  description = "Event stream instance name"
  default = "es-instance"
}
variable "gitops-cp-event-streams_es_apiVersion" {
  type = string
  description = "Event stream API version"
  default = "v1beta2"
}
variable "gitops-cp-event-streams_kafka_inter_broker_protocol_version" {
  type = string
  description = "Kafka config inter broker protocol version"
  default = "3.2"
}
variable "gitops-cp-event-streams_kafka_log_message_format_version" {
  type = string
  description = "Kafka config loag message format version"
  default = "3.2"
}
variable "gitops-cp-event-streams_kafka_listeners" {
  type = string
  description = "Kafka listerners defaults to secure - override to provide light-insecure"
  default = "[]"
}
variable "gitops-cp-mq_namespace" {
  type = string
  description = "The namespace where the application should be deployed"
  default = "openshift-operators"
}
variable "gitops-cp-mq_catalog_namespace" {
  type = string
  description = "The namespace where the catalog has been deployed"
  default = "openshift-marketplace"
}
variable "gitops-cp-mq-uniform-cluster_mqsc_configmap" {
  type = string
  description = "Name of the config map which holds the MQSC configuration"
  default = "mq-uniform-cluster-mqsc-cm"
}
variable "gitops-cp-mq-uniform-cluster_ini_configmap" {
  type = string
  description = "Name of the config map which holds the ini configuration"
  default = "mq-uniform-cluster-ini-cm"
}
variable "gitops-cp-mq-uniform-cluster_MQ_AvailabilityType" {
  type = string
  description = "AvailabilityType of MQ. Possible Values are (SingleInstance/MultiInstance/NativeHA)"
  default = "SingleInstance"
}
variable "gitops-cp-platform-navigator_subscription_namespace" {
  type = string
  description = "The namespace where the application should be deployed"
  default = "openshift-operators"
}
variable "gitops-cp-platform-navigator_catalog_namespace" {
  type = string
  description = "The namespace where the catalog has been deployed"
  default = "openshift-marketplace"
}
variable "gitops-cp-platform-navigator_replica_count" {
  type = number
  description = "The number of replicas to create for the platform navigator"
  default = 2
}
variable "gitops-cp-queue-manager_qmgr_name" {
  type = string
  description = "Name of queue manager to be created"
  default = "QM1"
}
variable "gitops-cp-queue-manager_qmgr_instance_name" {
  type = string
  description = "Name of MQ instance to be created"
  default = "mq-instance"
}
variable "gitops-cp-queue-manager_cpulimits" {
  type = string
  description = "CPU limits for the queue manager instance"
  default = "500m"
}
variable "gitops-cp-queue-manager_cpurequests" {
  type = string
  description = "CPU requests for the queue manager instance"
  default = "500m"
}
variable "gitops-cp-queue-manager_config_map" {
  type = string
  description = "Name of config map to created"
  default = "oms-queue-config"
}
variable "cp4i-mq-cluster_name" {
  type = string
  description = "The value that should be used for the namespace"
  default = "cp4i-mq-cluster"
}
variable "cp4i-mq-cluster_ci" {
  type = bool
  description = "Flag indicating that this namespace will be used for development (e.g. configmaps and secrets)"
  default = false
}
variable "cp4i-mq-cluster_create_operator_group" {
  type = bool
  description = "Flag indicating that an operator group should be created in the namespace"
  default = true
}
variable "cp4i-mq-cluster_argocd_namespace" {
  type = string
  description = "The namespace where argocd has been deployed"
  default = "openshift-gitops"
}
variable "cp4i-mq-cluster_branch" {
  type = string
  description = "The branch in the gitops repo where the resources should be placed"
  default = "main"
}
variable "cp4i-ace_name" {
  type = string
  description = "The value that should be used for the namespace"
  default = "cp4i-ace"
}
variable "cp4i-ace_ci" {
  type = bool
  description = "Flag indicating that this namespace will be used for development (e.g. configmaps and secrets)"
  default = false
}
variable "cp4i-ace_create_operator_group" {
  type = bool
  description = "Flag indicating that an operator group should be created in the namespace"
  default = true
}
variable "cp4i-ace_argocd_namespace" {
  type = string
  description = "The namespace where argocd has been deployed"
  default = "openshift-gitops"
}
variable "cp4i-ace_branch" {
  type = string
  description = "The branch in the gitops repo where the resources should be placed"
  default = "main"
}
variable "cp4i-mq_name" {
  type = string
  description = "The value that should be used for the namespace"
  default = "cp4i-mq"
}
variable "cp4i-mq_ci" {
  type = bool
  description = "Flag indicating that this namespace will be used for development (e.g. configmaps and secrets)"
  default = false
}
variable "cp4i-mq_create_operator_group" {
  type = bool
  description = "Flag indicating that an operator group should be created in the namespace"
  default = true
}
variable "cp4i-mq_argocd_namespace" {
  type = string
  description = "The namespace where argocd has been deployed"
  default = "openshift-gitops"
}
variable "cp4i-mq_branch" {
  type = string
  description = "The branch in the gitops repo where the resources should be placed"
  default = "main"
}
variable "cp4i-apic_name" {
  type = string
  description = "The value that should be used for the namespace"
  default = "cp4i-apic"
}
variable "cp4i-apic_ci" {
  type = bool
  description = "Flag indicating that this namespace will be used for development (e.g. configmaps and secrets)"
  default = false
}
variable "cp4i-apic_create_operator_group" {
  type = bool
  description = "Flag indicating that an operator group should be created in the namespace"
  default = true
}
variable "cp4i-apic_argocd_namespace" {
  type = string
  description = "The namespace where argocd has been deployed"
  default = "openshift-gitops"
}
variable "cp4i-apic_branch" {
  type = string
  description = "The branch in the gitops repo where the resources should be placed"
  default = "main"
}
variable "cp4i-es_name" {
  type = string
  description = "The value that should be used for the namespace"
  default = "cp4i-es"
}
variable "cp4i-es_ci" {
  type = bool
  description = "Flag indicating that this namespace will be used for development (e.g. configmaps and secrets)"
  default = false
}
variable "cp4i-es_create_operator_group" {
  type = bool
  description = "Flag indicating that an operator group should be created in the namespace"
  default = true
}
variable "cp4i-es_argocd_namespace" {
  type = string
  description = "The namespace where argocd has been deployed"
  default = "openshift-gitops"
}
variable "cp4i-es_branch" {
  type = string
  description = "The branch in the gitops repo where the resources should be placed"
  default = "main"
}
variable "cp4i-pn_name" {
  type = string
  description = "The value that should be used for the namespace"
  default = "cp4i-pn"
}
variable "cp4i-pn_ci" {
  type = bool
  description = "Flag indicating that this namespace will be used for development (e.g. configmaps and secrets)"
  default = false
}
variable "cp4i-pn_create_operator_group" {
  type = bool
  description = "Flag indicating that an operator group should be created in the namespace"
  default = true
}
variable "cp4i-pn_argocd_namespace" {
  type = string
  description = "The namespace where argocd has been deployed"
  default = "openshift-gitops"
}
variable "cp4i-pn_branch" {
  type = string
  description = "The branch in the gitops repo where the resources should be placed"
  default = "main"
}
variable "gitops_repo_host" {
  type = string
  description = "The host for the git repository."
  default = ""
}
variable "gitops_repo_type" {
  type = string
  description = "The type of the hosted git repository (github or gitlab)."
  default = ""
}
variable "gitops_repo_org" {
  type = string
  description = "The org/group where the git repository exists/will be provisioned."
  default = ""
}
variable "gitops_repo_project" {
  type = string
  description = "The project that will be used for the git repo. (Primarily used for Azure DevOps repos)"
  default = ""
}
variable "gitops_repo_username" {
  type = string
  description = "The username of the user with access to the repository"
  default = ""
}
variable "gitops_repo_token" {
  type = string
  description = "The personal access token used to access the repository"
  default = ""
}
variable "gitops_repo_repo" {
  type = string
  description = "The short name of the repository (i.e. the part after the org/group name)"
}
variable "gitops_repo_branch" {
  type = string
  description = "The name of the branch that will be used. If the repo already exists (provision=false) then it is assumed this branch already exists as well"
  default = "main"
}
variable "gitops_repo_public" {
  type = bool
  description = "Flag indicating that the repo should be public or private"
  default = false
}
variable "gitops_repo_gitops_namespace" {
  type = string
  description = "The namespace where ArgoCD is running in the cluster"
  default = "openshift-gitops"
}
variable "gitops_repo_server_name" {
  type = string
  description = "The name of the cluster that will be configured via gitops. This is used to separate the config by cluster"
  default = "default"
}
variable "gitops_repo_strict" {
  type = bool
  description = "Flag indicating that an error should be thrown if the repo already exists"
  default = false
}
variable "debug" {
  type = bool
  description = "Flag indicating that debug loggging should be enabled"
  default = false
}
variable "gitea_namespace_name" {
  type = string
  description = "The namespace that should be created"
  default = "gitea"
}
variable "gitea_namespace_create_operator_group" {
  type = bool
  description = "Flag indicating that an operator group should be created in the namespace"
  default = true
}
variable "server_url" {
  type = string
  description = "The url for the OpenShift api"
}
variable "cluster_login_user" {
  type = string
  description = "Username for login"
  default = ""
}
variable "cluster_login_password" {
  type = string
  description = "Password for login"
  default = ""
}
variable "cluster_login_token" {
  type = string
  description = "Token used for authentication"
}
variable "cluster_skip" {
  type = bool
  description = "Flag indicating that the cluster login has already been performed"
  default = false
}
variable "cluster_cluster_version" {
  type = string
  description = "[Deprecated] The version of the cluster (passed through to the output)"
  default = ""
}
variable "cluster_ingress_subdomain" {
  type = string
  description = "[Deprecated] The ingress subdomain of the cluster (passed through to the output)"
  default = ""
}
variable "cluster_tls_secret_name" {
  type = string
  description = "[Deprecated] The name of the secret containing the tls certificates for the ingress subdomain (passed through to the output)"
  default = ""
}
variable "cluster_ca_cert" {
  type = string
  description = "The base64 encoded ca certificate"
  default = ""
}
variable "cluster_ca_cert_file" {
  type = string
  description = "The path to the file that contains the ca certificate"
  default = ""
}
variable "gitea_instance_name" {
  type = string
  description = "The name for the instance"
  default = "gitea"
}
variable "gitea_username" {
  type = string
  description = "The username for the instance"
  default = "gitea-admin"
}
variable "gitea_password" {
  type = string
  description = "The password for the instance"
  default = ""
}
variable "gitea_ca_cert_file" {
  type = string
  description = "The path to the file that contains the ca certificate"
  default = ""
}
variable "sealed-secret-cert_cert" {
  type = string
  description = "The public key that will be used to encrypt sealed secrets. If not provided, a new one will be generated"
  default = ""
}
variable "sealed-secret-cert_private_key" {
  type = string
  description = "The private key that will be used to decrypt sealed secrets. If not provided, a new one will be generated"
  default = ""
}
variable "sealed-secret-cert_cert_file" {
  type = string
  description = "The file containing the public key that will be used to encrypt the sealed secrets. If not provided a new public key will be generated"
  default = ""
}
variable "sealed-secret-cert_private_key_file" {
  type = string
  description = "The file containin the private key that will be used to encrypt the sealed secrets. If not provided a new private key will be generated"
  default = ""
}
variable "util-clis_bin_dir" {
  type = string
  description = "The directory where the clis should be downloaded. If not provided will default to ./bin"
  default = ""
}
variable "util-clis_clis" {
  type = string
  description = "The list of clis that should be made available in the bin directory. Supported values are yq, jq, igc, helm, argocd, rosa, gh, glab, and kubeseal. (If not provided the list will default to yq, jq, and igc)"
  default = "[\"yq\",\"jq\",\"igc\"]"
}
variable "util-storage-class-manager_rwx_storage_class" {
  type = string
  description = "ReadWriteMany access type Storage Class"
}
variable "util-storage-class-manager_rwo_storage_class" {
  type = string
  description = "ReadWriteOnce access type Storage Class"
}
variable "util-storage-class-manager_file_storage_class" {
  type = string
  description = "The storage class to use for File storage volumes"
}
variable "util-storage-class-manager_block_storage_class" {
  type = string
  description = "The storage class to use for Block storage volumes"
}
