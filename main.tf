locals {
    suffix           = "KLsF("
    unique_name      = "${var.application_name}-${var.environment}-${local.suffix}"
    application_name = var.application_name
}