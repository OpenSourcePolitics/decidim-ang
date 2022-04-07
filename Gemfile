# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { git: "https://github.com/OpenSourcePolitics/decidim", branch: "angers/0.24.3" }

gem "decidim", DECIDIM_VERSION

gem "decidim-conferences", DECIDIM_VERSION

gem "decidim-cookies", git: "https://github.com/OpenSourcePolitics/decidim-module_cookies", branch: "release/0.24"
gem "decidim-decidim_awesome", "~> 0.7.0"

gem "decidim-term_customizer", git: "https://github.com/mainio/decidim-module-term_customizer.git", branch: "master"
gem "decidim-phone_authorization_handler", git: "https://github.com/OpenSourcePolitics/decidim-module_phone_authorization_handler", branch: "release/0.24-stable"

gem "bootsnap", "~> 1.4"

gem "dotenv-rails"

gem "puma", "~> 5.3.1"
gem "uglifier", "~> 4.1"
 
gem "faker", "~> 2.14"

gem "ruby-progressbar"
gem "sentry-raven"

gem "letter_opener_web", "~> 1.3"

gem "sprockets", "~> 3.7"

gem "activejob-uniqueness", require: "active_job/uniqueness/sidekiq_patch"
gem "fog-aws"
gem "sys-filesystem"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

  gem "decidim-dev", DECIDIM_VERSION
end

group :development do
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 3.5"
end

group :production do
  gem "passenger"
  gem "dalli"
  gem "sendgrid-ruby"
  gem "newrelic_rpm"
  gem "lograge"
  gem "sidekiq"
  gem "sidekiq-scheduler"
end
