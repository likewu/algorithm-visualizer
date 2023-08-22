# import visualization libraries {
using algorithm_visualizer
# }

# define tracer variables {
array2dTracer = Array2DTracer.Class("Grid")
logTracer = LogTracer.Class("Console")
# }

# define input variables
messages = [
  "Visualize",
  "your",
  "own",
  "code",
  "here!",
]

# highlight each line of messages recursively
function highlight(line)
  if line>length(messages) return nothing end
  message = messages[line];
  # visualize {
  LogTracer.println(logTracer, message)
  Array2DTracer.selectRow(array2dTracer, line, 1, length(message))
  Tracer.delay();
  Array2DTracer.deselectRow(array2dTracer, line, 1, length(message))
  # }
  highlight(line + 1)
end

# visualize {
Layout.setRoot(VerticalLayout.Class([array2dTracer, logTracer]))
Array2DTracer.set(array2dTracer, messages)
Tracer.delay()
# }
highlight(1)
