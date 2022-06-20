provider "aws" {
  region    = "sa-east-1"
  profile   = "terracoder"
}

# create iam user, change the name for your username
resource "aws_iam_user" "iam_user" {
  name = "developer1"
}

# give the iam user programatic access
resource "aws_iam_access_key" "iam_access_key" {
  user = aws_iam_user.iam_user.name
}

# create the inline policy, I used the policy editor of the aws console
data "aws_iam_policy_document" "s3_get_put_detele_policy_document" {
  statement {
    actions = [
        "s3:PutObject",
        "s3:GetObject",
        "s3:DeleteObject"
    ]

    resources = [
        "arn:aws:s3:::beeschool/*",
        "arn:aws:s3:::cubetas3/*"
    ]
  }
}

# attach the policy to the user
resource "aws_iam_user_policy" "s3_get_put_detele_policy" {
  name    = "s3_get_put_detele_policy"
  user    = aws_iam_user.iam_user.name
  policy  = data.aws_iam_policy_document.s3_get_put_detele_policy_document.json 
}