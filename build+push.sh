#!/bin/bash

set -xeo pipefail

# Remove trailing whitespace characters
sed -i 's/[ \t]*$//' FLIGHTRULES.md

# Create or update the table of contents
doctoc FLIGHTRULES.md

# Push to the server
git commit -am "Update FLIGHTRULES.md"
git push

exit 0

