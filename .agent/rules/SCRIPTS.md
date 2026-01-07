# Scripting Best Practices

This document outlines the standards for creating utility scripts in this project. All scripts should be placed in the `scripts/` directory (create if it doesn't exist) or project root if strictly necessary.

## Python Scripts

Use Python for complex logic, file processing, or cross-platform compatibility.

### 1. Environment & Dependencies
*   **Virtual Environment:** Always use a virtual environment for dependencies.
*   **Shebang:** Use `#!/usr/bin/env python3`.
*   **Dependencies:** List dependencies in a `requirements.txt` or usage comment at the top of the script.

### 2. Code Style & Structure
*   **Entry Point:** Always use `if __name__ == "__main__":` block.
*   **Type Hinting:** Use strict type hinting (`from typing import ...`).
*   **Formatting:** Follow PEP 8.
*   **Path Handling:** Use `pathlib.Path` instead of `os.path` for robust path manipulation.

### 3. Argument Parsing
*   Use `argparse` for command-line arguments. avoid manual `sys.argv` parsing.
*   Provide `-h/--help` descriptions.

### 4. Boilerplate
```python
#!/usr/bin/env python3
import argparse
import logging
from pathlib import Path
import sys

# Configure logging
logging.basicConfig(level=logging.INFO, format='%(levelname)s: %(message)s')
logger = logging.getLogger(__name__)

def main() -> int:
    parser = argparse.ArgumentParser(description="Script description here.")
    parser.add_argument("--input", "-i", type=Path, required=True, help="Input path")
    args = parser.parse_args()

    if not args.input.exists():
        logger.error(f"Input file not found: {args.input}")
        return 1

    logger.info(f"Processing {args.input}...")
    # Logic here
    
    return 0

if __name__ == "__main__":
    sys.exit(main())
```

## Bash Scripts

Use Bash for simple process glue, CI/CD steps, or wrapping system commands.

### 1. Safety & Strict Mode
*   **Shebang:** Use `#!/usr/bin/env bash`.
*   **Strict Mode:** Always start with `set -euo pipefail`.
    *   `-e`: Exit on error.
    *   `-u`: Treat unset variables as an error.
    *   `-o pipefail`: Return exit status of the last command in the pipe that failed.

### 2. Output & Logging
*   Use functions for logging to standard error (`>&2`) for non-output messages.

### 3. Usage & Help
*   Implement a `usage()` function and check for `-h/--help`.

### 4. Boilerplate
```bash
#!/usr/bin/env bash
set -euo pipefail

# Get script directory for relative paths
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

usage() {
    echo "Usage: $0 [options] <argument>"
    echo "  -h, --help    Show this help message"
    exit 1
}

log() {
    echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')] $*" >&2
}

main() {
    if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
        usage
    fi

    local arg="${1:-}"
    if [[ -z "$arg" ]]; then
        log "Error: Argument required."
        usage
    fi

    log "Starting script..."
    # Logic here
}

main "$@"
```
