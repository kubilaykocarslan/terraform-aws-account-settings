resource "aws_iam_account_alias" "project" {
  account_alias = "${local.alias}"
}

resource "aws_iam_account_password_policy" "die_hard" {
  minimum_password_length        = 8
  require_lowercase_characters   = true
  require_numbers                = true
  require_uppercase_characters   = true
  require_symbols                = true
  allow_users_to_change_password = true
}
