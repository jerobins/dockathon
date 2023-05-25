"""Example of Python file to dockerize."""

# pylint: skip-file

import sys, os, logging, time

_LOGGER = logging.getLogger(__name__)


logging.basicConfig(
    format="%(asctime)s.%(msecs)03d %(levelname)s {%(module)s} [%(funcName)s] %(message)s",
    datefmt="%Y-%m-%d,%H:%M:%S",
    # level=logging.DEBUG,
    level=logging.CRITICAL,
)

user = os.environ.get("USER")

if __name__ == "__main__":
    # ensure selector event loop is started in windows
    if sys.platform == "win32":
        _LOGGER.debug("aaaaaiiiiieeeee")

_LOGGER.debug("Running script as user: " + user)

sys.exit()
