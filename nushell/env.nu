# env.nu
#
# Installed by:
# version = "0.105.1"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.

$env.path ++= ["~/.local/bin"]

# odin
$env.path ++= ["~/Languages/odin"]
# zig
$env.path ++= ["~/Languages/zig"]
# go
$env.path ++= ["~/Languages/go/bin"]
# opencode
$env.path ++= ["/home/justin/.opencode/bin"]



# Add Cargo's bin directory to your PATH
# Use path join for cross-platform compatibility
$env.PATH = ($env.PATH | append ($env.HOME | path join ".cargo" "bin"))

# Bun Installation Path
# This sets the BUN_INSTALL environment variable
$env.BUN_INSTALL = ($env.HOME | path join ".bun")

# Add Bun's bin directory to your PATH
# This prepends Bun's bin directory to your existing PATH
$env.PATH = (($env.BUN_INSTALL | path join "bin") | append $env.PATH)

