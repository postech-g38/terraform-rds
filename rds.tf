resource "aws_db_instance" "prd-rds2" {
  identifier = "rds-prd"

  instance_class        = "db.t3.micro"
  storage_type          = "gp3"
  allocated_storage     = 20  # in GB
  max_allocated_storage = 40 # in GB
  multi_az              = false

  db_name        = "bitebyteBurguers"
  engine         = "postgres"
  engine_version = "15.6"
  # parameter_group_name = ""
  port = 5432

  skip_final_snapshot = true
  apply_immediately   = true
  performance_insights_enabled = true
  performance_insights_retention_period = 7  # in DAYS

  backup_retention_period = 1 # in DAYS
  backup_window           = "00:00-00:30"
  delete_automated_backups = false

  username = "postgres"
  manage_master_user_password   = true # create credentials and send to secrets manager
  # master_user_secret_kms_key_id = aws_kms_key.example.key_id
}

