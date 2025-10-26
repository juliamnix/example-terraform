package infracost

required_tags = ["owner", "environment", "cost_center"]

deny[msg] {
  tag := required_tags[_]
  not input.tags[tag]
  msg := sprintf("Resource %s is missing the tag: %s", [input.name, tag])
}
