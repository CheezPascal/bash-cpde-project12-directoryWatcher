
#!/bin/bash

# Directory Watcher
watch_dir="/path/to/watch"

inotifywait -m -e create,delete,modify "$watch_dir" | while read -r event; do
    echo "Change detected: $event"
done