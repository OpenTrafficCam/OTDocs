# Developer Guidelines

## Development Environment Setup

OTAnalytics uses UV package manager for dependency management. This provides faster installs, better dependency resolution, and reproducible environments.

### Prerequisites

- Python 3.12
- UV package manager (install from https://docs.astral.sh/uv/)

### Quick Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/OpenTrafficCam/OTAnalytics.git
   cd OTAnalytics
   ```

2. Set up development environment:
   
   **Linux/macOS:**
   ```bash
   ./install_dev.sh
   ```
   
   **Windows:**
   ```cmd
   install_dev.cmd
   ```

This will:

- Install the project and all dependencies using UV
- Set up development dependencies (testing, linting, formatting tools)
- Install pre-commit hooks

### UV Workflow

#### Installing Dependencies

- **Production installation:** `uv sync`
- **Development installation:** `uv sync --extra dev`
- **Adding new dependencies:** Edit `pyproject.toml` and run `uv sync`

#### Running Commands

- **Run Python scripts:** `uv run python script.py`
- **Run tests:** `uv run pytest`
- **Run application:** `uv run otanalytics`

#### Managing Dependencies

Dependencies are defined in `pyproject.toml`:

- Main dependencies in `[project.dependencies]`
- Development dependencies in `[project.optional-dependencies.dev]`

The `uv.lock` file ensures reproducible builds and should be committed to the repository.

### Development Tools

All development tools are installed automatically with the dev dependencies:

- **Code formatting:** `uv run black .`
- **Import sorting:** `uv run isort .`
- **Type checking:** `uv run mypy OTAnalytics`
- **Linting:** `uv run flake8 OTAnalytics`
- **Testing:** `uv run pytest`

### Pre-commit Hooks

Pre-commit hooks are automatically installed and will run:

- Black (code formatting)
- isort (import sorting)
- Flake8 (linting)
- MyPy (type checking)

### Migration from pip/requirements.txt

If you're migrating from the old pip-based setup:

1. Remove old virtual environment: `rm -rf venv` or `rmdir /s venv`
2. Run the new installation scripts as described above
3. UV will create a new `.venv` directory and `uv.lock` file

### CLI Commands

The project provides a `otanalytics` CLI command when installed:
```bash
uv run otanalytics  # Run the application
```

### Troubleshooting

**UV not found:** Install UV from https://docs.astral.sh/uv/

**Lock file issues:** Regenerate with `uv lock --upgrade`

**Dependency conflicts:** Use `uv tree` to inspect dependency graph

**Pre-commit issues:** Reinstall hooks with `uv run pre-commit install --install-hooks`