#!/bin/bash
set -euxo pipefail

cd /dashboard_devel
source /venv/bin/activate
echo "Running lint"
black --check --diff towerdashboard
echo "Running tests"
pytest -v towerdashboard/tests
