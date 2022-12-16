# Module - S3 Inventory Athena Table

- [Module - EC2](#module---s3-inventory-athena-table)
  - [Minimum Required Configuration](#minimum-required-configuration)
  - [Inputs and Outputs](#inputs-and-outputs)
    - [Inputs](#inputs)
    - [Outputs](#outputs)

## Minimum Required Configuration

'''terraform
module "s3_inventory_example" {
  source = "../relative/path/to/modules/ec2"
    source = "/home/tophat704/loose-files/s3inventory"

    database_name   = "database the table will be located"
    name            = "name for the table"
    location        = "S3 URI to the hive folder ie s3://aholloway-test-bucket-s3inventory/aholloway-test-bucket/aholloway-test-bucket/hive"
}
'''