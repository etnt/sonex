# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :sonex, []

config :logger,
  level: :debug,
  truncate: 4096,
  backends: [:console],
  compile_time_purge_matching: [
    [level_lower_than: :info]
  ]
