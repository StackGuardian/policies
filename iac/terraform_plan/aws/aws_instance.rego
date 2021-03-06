package stackguardian.iac.terraform_plan.aws.aws_instance

# policies for terraform resource aws_instance

import input as tfplan

ami {
   resource_changes := tfplan.resource_changes[_]
   resource_changes.type == "aws_instance"
   resource_changes.change.after.ami == data.ami[_]
}
