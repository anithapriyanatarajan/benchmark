#!/usr/bin/env bash
# Start the dashboard in a codespace (needs the Docker daemon from the docker-in-docker feature).
set -euo pipefail
cd "$(dirname "$0")/.."

if ! docker info >/dev/null 2>&1; then
  echo "Docker is not running. Wait for the codespace setup to finish, or rebuild the container." >&2
  exit 1
fi

exec streamlit run dashboard/app.py --server.port 8501
