# resource "yandex_iam_service_account" "this" {
#   name        = "k8s-manager"
#   description = "service account to manage K8S"
# }

# resource "yandex_iam_service_account_iam_binding" "admin-account-iam" {
#   service_account_id = yandex_iam_service_account.this.id
#   role               = "admin"

#   members = "serviceAccount:${yandex_iam_service_account.this.id}"
# }
