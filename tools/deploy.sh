#!/bin/bash

# set -eu -o pipefail

# declare -A PROJECT_ID

# #Firebase project Ids
# PROJECT_ID["stable", "dev"]="rd-docs-dev"
# # PROJECT_ID["stable", "prod"]="material-angular-io"
# # PROJECT_ID["v5", "dev"]="material2-docs-5"
# # PROJECT_ID["v5", "prod"]="v5-material-angular-io"

# version=${1:-stable}
# mode=${2:-dev}
# projectId=${PROJECT_ID[$version, $mode]}

npm run build-themes
ng build --aot --prod
firebase use "rd-docs-dev"
firebase deploy

# todo: add comitizen, semantic-release
# yarn semantic-release || true
