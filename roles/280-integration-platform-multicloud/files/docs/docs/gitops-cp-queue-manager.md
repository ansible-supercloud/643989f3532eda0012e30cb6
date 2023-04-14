# MQ Queue Manager module

Module to populate a gitops repo with the resources to provision a Queue Manager from the cloud pak


## Software dependencies

The module depends on the following software components:

### Terraform version

- \>= v0.15

### Terraform providers


- gitops (cloud-native-toolkit/gitops)

### Module dependencies


- gitops - [github.com/cloud-native-toolkit/terraform-tools-gitops.git](https://github.com/cloud-native-toolkit/terraform-tools-gitops.git) (>= 1.1.0)
- catalogs - [github.com/cloud-native-toolkit/terraform-gitops-cp-catalogs.git](https://github.com/cloud-native-toolkit/terraform-gitops-cp-catalogs.git) (>= 1.0.0)
- dep-manager - [github.com/cloud-native-toolkit/terraform-cp4i-dependency-management.git](https://github.com/cloud-native-toolkit/terraform-cp4i-dependency-management.git) (>= 1.0.0)
- namespace - [github.com/cloud-native-toolkit/terraform-gitops-namespace.git](https://github.com/cloud-native-toolkit/terraform-gitops-namespace.git) (>= 1.0.0)
- mq - [github.com/cloud-native-toolkit/terraform-gitops-cp-mq.git](https://github.com/cloud-native-toolkit/terraform-gitops-cp-mq.git) (>= 1.0.0)
- storage - [github.com/cloud-native-toolkit/terraform-util-storage-class-manager.git](https://github.com/cloud-native-toolkit/terraform-util-storage-class-manager.git) (>= 1.0.0)

## Example usage

```hcl
module "gitops-cp-queue-manager" {
  source = "github.com/cloud-native-toolkit/terraform-gitops-cp-queue-manager"

  config_map = var.gitops-cp-queue-manager_config_map
  cpulimits = var.gitops-cp-queue-manager_cpulimits
  cpurequests = var.gitops-cp-queue-manager_cpurequests
  entitlement_key = module.gitops-cp-catalogs.entitlement_key
  git_credentials = module.gitops_repo.git_credentials
  gitops_config = module.gitops_repo.gitops_config
  kubeseal_cert = module.gitops_repo.sealed_secrets_cert
  license = module.cp4i-version-dependency.mq.license
  license_use = module.cp4i-version-dependency.mq.license_use
  mq_version = module.cp4i-version-dependency.mq.version
  namespace = module.cp4i-mq.name
  qmgr_instance_name = var.gitops-cp-queue-manager_qmgr_instance_name
  qmgr_name = var.gitops-cp-queue-manager_qmgr_name
  server_name = module.gitops_repo.server_name
  storageClass = module.util-storage-class-manager.block_storage_class
}

```

## Module details

### Inputs

| Name | Description | Required | Default | Source |
|------|-------------|---------|----------|--------|
| gitops_config | Config information regarding the gitops repo structure | true |  | gitops.gitops_config |
| git_credentials | The credentials for the gitops repo(s) | true |  | gitops.git_credentials |
| namespace | The namespace where the application should be deployed | true |  | namespace.name |
| kubeseal_cert | The certificate/public key used to encrypt the sealed secrets | true |  | gitops.sealed_secrets_cert |
| server_name | The name of the server | false | default | gitops.server_name |
| entitlement_key | The entitlement key required to access Cloud Pak images | true |  | catalogs.entitlement_key |
| license | License string for required MQ version | false | L-RJON-C7QG3S | dep-manager.mq.license |
| license_use | Usage for Production or Non-Production | false | NonProduction | dep-manager.mq.license_use |
| qmgr_name | Name of queue manager to be created | false | QM1 |  |
| qmgr_instance_name | Name of MQ instance to be created | false | telco-cloud |  |
| cpulimits | CPU limits for the queue manager instance | false | 500m |  |
| cpurequests | CPU requests for the queue manager instance | false | 500m |  |
| storageClass | Storage class to be used for Qmgr | true |  | storage.block_storage_class |
| mq_version | Version of MQ to be installed | false | 9.2.4.0-r1 | dep-manager.mq.version |
| config_map | Name of config map to created | true |  |  |

### Outputs

| Name | Description |
|------|-------------|
| instance_name | The name of the module |
| qmgr_instance_name | Name of queue manager created |
| config_map |  |
| name | The name of the module |
| branch | The branch where the module config has been placed |
| namespace | The namespace where the module will be deployed |
| server_name | The server where the module will be deployed |
| layer | The layer where the module is deployed |
| type | The type of module where the module is deployed |

## Resources

- [Documentation](https://operate.cloudnativetoolkit.dev)
- [Module catalog](https://modules.cloudnativetoolkit.dev)

> License: Apache License 2.0 | Generated by iascable (0.1.0)