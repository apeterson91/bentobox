.onAttach <- function(...) {
  needed <- core[!is_attached(core)]
  if (length(needed) == 0)
    return()

  crayon::num_colors(TRUE)
  bentobox_attach()

  if (!"package:conflicted" %in% search()) {
    x <- bentobox_conflicts()
    msg(bentobox_conflict_message(x), startup = TRUE)
  }

}

is_attached <- function(x) {
  paste0("package:", x) %in% search()
}

