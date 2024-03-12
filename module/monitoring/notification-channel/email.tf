resource "google_monitoring_notification_channel" "email" {
 display_name = var.email_channel_display_name
   type = "email"
   labels = {
     email_address = var.notification_email
   }
 }