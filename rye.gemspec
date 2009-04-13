@spec = Gem::Specification.new do |s|
  s.name = "rye"
  s.rubyforge_project = "rye"
  s.version = "0.4.2"
  s.summary = "Rye: Run system commands via SSH locally and remotely in a Ruby way."
  s.description = s.summary
  s.author = "Delano Mandelbaum"
  s.email = "delano@solutious.com"
  s.homepage = "http://solutious.com/"
  
  # = DEPENDENCIES =
  # Add all gem dependencies
  s.add_dependency 'net-ssh'
  s.add_dependency 'net-scp'
  s.add_dependency 'highline'
  s.add_dependency 'drydock'
  
  # = MANIFEST =
  # The complete list of files to be included in the release. When GitHub packages your gem, 
  # it doesn't allow you to run any command that accesses the filesystem. You will get an
  # error. You can ask your VCS for the list of versioned files:
  # git ls-files
  # svn list -R
  s.files = %w(
  CHANGES.txt
  LICENSE.txt
  README.rdoc
  Rakefile
  bin/rye
  bin/try
  lib/esc.rb
  lib/rye.rb
  lib/rye/box.rb
  lib/rye/cmd.rb
  lib/rye/key.rb
  lib/rye/rap.rb
  lib/rye/set.rb
  lib/sys.rb
  rye.gemspec
  try/copying.rb
  try/keys.rb
  tst/10-key1
  tst/10-key1.pub
  tst/10-key2
  tst/10-key2.pub
  tst/10_keys_test.rb
  tst/50_rye_test.rb
  )
  
  # = EXECUTABLES =
  # The list of executables in your project (if any). Don't include the path, 
  # just the base filename.
  s.executables = %w[rye]
  
  
  s.extra_rdoc_files = %w[README.rdoc LICENSE.txt]
  s.has_rdoc = true
  s.rdoc_options = ["--line-numbers", "--title", s.summary, "--main", "README.rdoc"]
  s.require_paths = %w[lib]
  s.rubygems_version = '1.3.0'

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2
  end
  
end