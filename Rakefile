require 'puppetlabs_spec_helper/rake_tasks'

# Puppet-lint config
require 'puppet-lint/tasks/puppet-lint'
# don't complain about over 80 characters
#PuppetLint.configuration.send("disable_80chars")

# Remove puppetlabs default task (which is `help`) and use our own
Rake::Task['default'].clear
task :default => [:lint, :spec]
