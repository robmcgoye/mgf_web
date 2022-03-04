# -*- encoding: utf-8 -*-
# stub: mobility 1.2.5 ruby lib

Gem::Specification.new do |s|
  s.name = "mobility".freeze
  s.version = "1.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/shioyama/mobility/blob/master/CHANGELOG.md", "homepage_uri" => "https://github.com/shioyama/mobility", "source_code_uri" => "https://github.com/shioyama/mobility" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Salzberg".freeze]
  s.bindir = "exe".freeze
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIEODCCAqCgAwIBAgIBATANBgkqhkiG9w0BAQsFADAjMSEwHwYDVQQDDBhjaHJp\ncy9EQz1kZWppbWF0YS9EQz1jb20wHhcNMjEwMjE4MTMxMzA5WhcNMjIwMjE4MTMx\nMzA5WjAjMSEwHwYDVQQDDBhjaHJpcy9EQz1kZWppbWF0YS9EQz1jb20wggGiMA0G\nCSqGSIb3DQEBAQUAA4IBjwAwggGKAoIBgQDURCKbt5oY0sCp4kYK1u5SLzVHg6Q1\n2LejeQvUGpR3gulWqrq/507XRxE/9FSpLfgo3cGGYio1/gg2Yp7pBI4ZNEz8d2Vg\n6caWLHYtHYF0/jlo177UspEF1bt3lCCmaA/ZyQpvoLi76Jf6VCBjepMqhLjeBSsA\nxUqSdgNT8lzduOzdYk/GWf2Trvyz72IN6rY7hSwJ/U4R2DusRNTbKC55iyu0MyqI\nNks33les0xQERucqes1YzSEnpott/GUQ/fFWV1Qx7M1hMnqbQIm493BueR6X95a2\nB7/aqY7LUVVmn9p65NMBJhbbP/pbAcLYV0C+y1Jy9NaVQTpWmJXVKBpYwlAzOJOQ\n+b/7MBzT5Zzudkq9OlA5rZJB0hFo/Bm38MOCTSTk1/RT+zmoOyb4bx/h400L4ZUt\nbRGON33BZ99gPiYdGfd3Pc/7FooteJASjKIO4Hman2ELRIdu6Bq+fIkTdJBcruS/\nXL6xoRitCG7CX0IqmMKuLiKA/J0amAikHGsCAwEAAaN3MHUwCQYDVR0TBAIwADAL\nBgNVHQ8EBAMCBLAwHQYDVR0OBBYEFMNUGAhS68egZT6DOfJwrfIdCtT/MB0GA1Ud\nEQQWMBSBEmNocmlzQGRlamltYXRhLmNvbTAdBgNVHRIEFjAUgRJjaHJpc0BkZWpp\nbWF0YS5jb20wDQYJKoZIhvcNAQELBQADggGBAH1RnWhD9bum/ijqzAAlkGWYzGza\nh/3seA2bg1r5bbttFjD48f7RepfoAMxAqfiUWcukoukJeu7UY8jWmUIn9ut1oXct\nFh0YnueLFzzmppCCU+/SX5mc1y7mHYZHiU5n8qy1wJ6ljLWXVeprgJ96NdnmxuVU\ndzPPSDTex/x7xBvHiaPc/uZSLc173N3qdY/Cd0B3/OflYeU2h5UpIHnmXrsONdMC\nXohy+Rrr2yT09MPYG+llpLHDnXmTnPsOZUSL5Q4c/iolodv4xJZKwLMZwrm2hQl9\n9Or9Os+qxY0zWxmWuAtTFrskLAMhckCPDEcqSZmW4CT1a/quC2Oh0y1GsXPcqtqt\nhLRuwfTXGor6bg4CrU7GRbSqjvnBepct5lwZiZrOCnMEUpY+9Q8fwmG3o3B+wBsw\neBMcZq0d1tbtv1M1UXND9mOfhLZ31YvoSTPkrJiRpljUNgD0+ugelnr1/5X/9k8y\nJ9QOd3C5jpSShf/HMvpJnFuSYFm19cH9GrHjvw==\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2021-12-04"
  s.description = "Stores and retrieves localized data through attributes on a Ruby class, with flexible support for different storage strategies.".freeze
  s.email = ["chris@dejimata.com".freeze]
  s.homepage = "https://github.com/shioyama/mobility".freeze
  s.licenses = ["MIT".freeze]
  s.post_install_message = "\nWarning: Mobility v1.0 includes backwards-incompatible changes (mostly around configuration).\n\nIf you are upgrading from an earlier version, please see:\n- https://github.com/shioyama/mobility/releases/tag/v1.0.0\n- https://github.com/shioyama/mobility/wiki/Introduction-to-Mobility-v1.0\n".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.2.32".freeze
  s.summary = "Pluggable Ruby translation framework".freeze

  s.installed_by_version = "3.2.32" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<request_store>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<i18n>.freeze, [">= 0.6.10", "< 2"])
    s.add_development_dependency(%q<database_cleaner>.freeze, ["~> 1.5", ">= 1.5.3"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 12", ">= 12.2.1"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<yard>.freeze, ["~> 0.9.0"])
  else
    s.add_dependency(%q<request_store>.freeze, ["~> 1.0"])
    s.add_dependency(%q<i18n>.freeze, [">= 0.6.10", "< 2"])
    s.add_dependency(%q<database_cleaner>.freeze, ["~> 1.5", ">= 1.5.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 12", ">= 12.2.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9.0"])
  end
end
