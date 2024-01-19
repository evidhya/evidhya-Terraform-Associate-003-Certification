# >>>>>>>>>>>>>>>>>> Dry Principle <<<<<<<<<<<<<<<<<<<<<

# Dry(Don't repeat yourself) is a principle of software development aimed at reducing repetition of software patterns
# Centralized Structure : we can centralizes the terraform resources and can call out from TF files whenever required
# Need to do a terraform init when you create a module for 1st time. Its need to install

# >>>>>>>>>>>>>>>>>> Modules with Terraform  <<<<<<<<<<<<<<<<<<<<<

# >>>>>>>>>>>>>>>>>> Variables and terraform modules <<<<<<<<<<<<<<<<<
# Challenges : One common need on infrastructure management is to build environments like staging production with similar setup but keeping environment variables different.


# >>>>>>>>>>>>>>>>>  Accessing Child Module Outputs <<<<<<<<<<<<<<<<<<<<
# In a parent module, outputs of child modules are available in expression as module.<MODULE NAME>.<OUTPUT NAME>

# >>>>>>>>>>>>>>>>> Workspaces <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
#terraform workspace -h
#terraform workspace show
#terraform workspace new dev
#terraform workspace new prd
#terraform workspace list
#terraform workspace select dev