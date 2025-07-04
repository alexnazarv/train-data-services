//
// Create KMS Symmetric Key.
//
resource "yandex_kms_symmetric_key" "this" {
  name              = "example-symetric-key"
  description       = "description for key"
  default_algorithm = "AES_128"
  rotation_period   = "8760h" // equal to 1 year
}
