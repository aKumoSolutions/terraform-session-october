output "main_instance_public_ip" {
  value       = aws_instance.main.public_ip                    # Reference to Resource          
  description = "The public IP address of the main server instance."
}
output "main_instance_private_ip" {
  value       = aws_instance.main.private_ip                    # Reference to Resource          
  description = "The public IP address of the main server instance."
}