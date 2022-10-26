resource "aws_sqs_queue" "main" {
  name = replace(local.name, "rtype", "sqs-1")
  tags = merge(local.common_tags, { Name = replace(local.name, "rtype", "sqs-1") })
}
resource "aws_sqs_queue" "main1" {
  name = replace(local.name, "rtype", "sqs-2")
  tags = merge(local.common_tags, # a map
               { Name = replace(local.name, "rtype", "sqs-2") } # a map
              )
}

// 1. Create 3 different SQS queue
// 2. Each queue has to have a Name tag that matches with Name of the resouce and add following tags
//     Tags:
//         Team = DevOps
//         Owner = Yourname
//         Environment = dev
//         Project = AWS
//         Account = Nonprod
