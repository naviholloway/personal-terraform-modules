resource "aws_glue_catalog_table" "aws_glue_catalog_table" {
    name          = var.name
    database_name = var.database_name
    owner         = "hadoop"
    parameters    = {
        "EXTERNAL"                    = "TRUE"
        "projection.dt.format"        = "yyyy-MM-dd-HH-mm"
        "projection.dt.interval"      = "1"
        "projection.dt.interval.unit" = "DAYS"
        "projection.dt.range"         = "2022-11-30-00-00,NOW"
        "projection.dt.type"          = "date"
        "projection.enabled"          = "true"
        }
    table_type    = "EXTERNAL_TABLE"

    partition_keys {
        name = "dt"
        type = "string"
        }

    storage_descriptor {
        bucket_columns            = []
        compressed                = false
        input_format              = "org.apache.hadoop.hive.ql.io.SymlinkTextInputFormat"
        location                  = var.location
        number_of_buckets         = -1
        output_format             = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"
        parameters                = {}
        stored_as_sub_directories = false

        columns {
            name       = "bucket"
            parameters = {}
            type       = "string"
            }
        columns {
            name       = "key"
            parameters = {}
            type       = "string"
            }
        columns {
            name       = "version_id"
            parameters = {}
            type       = "string"
            }
        columns {
            name       = "is_latest"
            parameters = {}
            type       = "boolean"
            }
        columns {
            name       = "is_delete_marker"
            parameters = {}
            type       = "boolean"
            }
        columns {
            name       = "size"
            parameters = {}
            type       = "bigint"
            }
        columns {
            name       = "last_modified_date"
            parameters = {}
            type       = "bigint"
            }
        columns {
            name       = "e_tag"
            parameters = {}
            type       = "string"
            }
        columns {
            name       = "storage_class"
            parameters = {}
            type       = "string"
            }
        columns {
            name       = "is_multipart_uploaded"
            parameters = {}
            type       = "boolean"
            }
        columns {
            name       = "replication_status"
            parameters = {}
            type       = "string"
            }
        columns {
            name       = "encryption_status"
            parameters = {}
            type       = "string"
            }
        columns {
            name       = "object_lock_retain_until_date"
            parameters = {}
            type       = "bigint"
            }
        columns {
            name       = "object_lock_mode"
            parameters = {}
            type       = "string"
            }
        columns {
            name       = "object_lock_legal_hold_status"
            parameters = {}
            type       = "string"
            }
        columns {
            name       = "intelligent_tiering_access_tier"
            parameters = {}
            type       = "string"
            }
        columns {
            name       = "bucket_key_status"
            parameters = {}
            type       = "string"
            }
        columns {
            name       = "checksum_algorithm"
            parameters = {}
            type       = "string"
            }

        ser_de_info {
            parameters            = {
                "serialization.format" = "1"
                }
            serialization_library = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
            }

        skewed_info {
            skewed_column_names               = []
            skewed_column_value_location_maps = {}
            skewed_column_values              = []
            }
        }
    }