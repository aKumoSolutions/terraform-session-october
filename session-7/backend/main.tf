resource "aws_db_instance" "main" {
  allocated_storage         = 10
  identifier                = "${var.env}-db-instance"
  db_name                   = "mydb"
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t2.micro"
  username                  = "admin"
  password                  = random_password.db_password.result
  skip_final_snapshot       = var.env != "prod" ? true : false
  final_snapshot_identifier = var.env == "prod" ? "${var.env}-snapshot" : null
}

// When it's DEV, QA, Stage environments, I do not need a snapshot  (True)
// When it's PROD environment, I need a snapshot 


// Conditional Expression:

// Kris == Kris ? "Nice" : "Not_Nice"
// >> "Nice"

// Kris != Kris ? "Nice" : "Not_Nice"
// >> "Not_Nice"

// RDS = Instance (Instance Identifier, Name for RDS Instance)
// Database = Actual Relational Database in RDS (Database Name)
