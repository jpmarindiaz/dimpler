
file_path_sans_ext <- function (x)
{
  sub("([^.]+)\\.[[:alnum:]]+$", "\\1", x)
}

file_ext <- function (x)
{
  pos <- regexpr("\\.([[:alnum:]]+)$", x)
  ifelse(pos > -1L, substring(x, pos + 1L), "")
}
