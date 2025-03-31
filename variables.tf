variable "common_tags" {
  type = map(string)
}

variable "env" {
  description = "The deployment environment (sandbox, aat, prod etc..)"
}

variable "product" {
  description = "sct-rm"
  default     = "sct-rm"
}