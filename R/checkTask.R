checkTask = function(task, cl = "SupervisedTask", binary = FALSE) {
  assertClass(task, classes = cl)
  if (binary && length(task$task.desc$class.levels) != 2L)
    stopf("Task '%s' must be binary classification!", task$task.desc$id)
}
