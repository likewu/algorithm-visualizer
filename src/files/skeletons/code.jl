# import visualization libraries {
using algorithm-visualizer
# }

# define tracer variables {
array2dTracer = Array2DTracer("Grid")
logTracer = LogTracer("Console")
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
  if line >= messages.length return
  const message = messages[line];
  # visualize {
  logTracer.println(message)
  array2dTracer.selectRow(line, 0, message.length - 1)
  Tracer.delay();
  array2dTracer.deselectRow(line, 0, message.length - 1)
  # }
  highlight(line + 1)
end

# visualize {
Layout.setRoot(VerticalLayout([array2dTracer, logTracer]))
array2dTracer.set(messages)
Tracer.delay()
# }
highlight(0)
