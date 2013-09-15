require 'puppetlabs_spec_helper/rake_tasks'

exclude_paths = [
  "pkg/**/*",
  "vendor/**/*",
  "spec/**/*",
]

# Puppet-lint config
require 'puppet-lint/tasks/puppet-lint'
#PuppetLint.configuration.log_format = "%{path}:%{linenumber}:%{check}:%{KIND}:%{message}"
# warnings count as a failure
#PuppetLint.configuration.fail_on_warnings = true
# don't complain about over 80 characters
#PuppetLint.configuration.send("disable_80chars")
PuppetLint.configuration.ignore_paths = exclude_paths

# Puppet-syntax config
require 'puppet-syntax/tasks/puppet-syntax'
PuppetSyntax.exclude_paths = exclude_paths


task :test => [
  :syntax,
  :lint,
  :spec,
]
# Remove puppetlabs default task (which is `help`) and use our own
Rake::Task['default'].clear
task :default => :test
