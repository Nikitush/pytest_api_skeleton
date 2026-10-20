from pathlib import Path
from sys import path


path.append(Path(__file__).parent.as_posix())
pytest_plugins = []
