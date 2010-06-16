# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rdkim}
  s.version = "0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tracey Eubanks"]
  s.date = %q{2010-06-16}
  s.default_executable = %q{rdkim_sign.rb}
  s.description = %q{DKIM implementation as a Ruby extension in C using the libdkim library.}
  s.email = %q{traceyeubanks@yahoo.com}
  s.executables = ["dkim_sign.rb"]
  s.extensions = ["src/rdkim/sign/extconf.rb"]
#  s.files = ["bin", "bin/dkim_sign.rb", "bin/dkim_verify.rb", "lib", "lib/dkim.rb", "LICENSE", "Rakefile", "README", "rubydkim.gemspec", "sample_key", "sample_key.pub", "src", "src/dkim", "src/dkim/signer", "src/dkim/signer/extconf.rb", "src/dkim/signer/signer.c", "src/dkim/verifier", "src/dkim/verifier/extconf.rb", "src/dkim/verifier/verifier.c", "VERSION"]
  s.require_paths = ["lib", "lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A gem that utilizes libdkim to sign emails}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<dnsruby>, [">= 0"])
    else
      s.add_dependency(%q<dnsruby>, [">= 0"])
    end
  else
    s.add_dependency(%q<dnsruby>, [">= 0"])
  end
end