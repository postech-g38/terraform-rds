resource "aws_db_instance" "prd-rds2" {
  identifier = "rds-prd"

  instance_class        = "db.t3.micro"
  storage_type          = "gp3"
  allocated_storage     = 20  # in GB
  max_allocated_storage = 40 # in GB
  multi_az              = false
  # replica_mode = "open-read-only"
  # storage_encrypted = 
  # timezone =

  # publicly_accessible = false
  # vpc_security_group_ids = [ "${ aws_security_group.rds-prd-sg.id }" ]
  # db_subnet_group_name = aws_db_subnet_group .rds-prd-subnet.id

  db_name        = "bitebyteBurguers"
  engine         = "postgres"
  engine_version = "15.6"
  # parameter_group_name = ""
  port = 5432

  skip_final_snapshot = true
  apply_immediately   = true
  # deletion_protection = true
  # performance_insights_enabled = true
  # performance_insights_retention_period = 7  # in DAYS

  backup_retention_period = 1 # in DAYS
  backup_window           = "00:00-00:30"
  # copy_tags_to_snapshot = true
  delete_automated_backups = false

  username = "postgres"
  manage_master_user_password   = true # create credentials and send to secrets manager
  # master_user_secret_kms_key_id = aws_kms_key.example.key_id
}

