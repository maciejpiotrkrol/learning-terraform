terraform {
  # Double slash determines root of project
  source = "../../..//components/myFirstModule"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  # No additional inputs or overrides required for this module
}