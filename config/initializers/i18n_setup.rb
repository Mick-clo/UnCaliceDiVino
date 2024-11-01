require 'i18n'

I18n.load_path += Dir[File.expand_path("config/locales") + "/*.yml"]
I18n.default_locale = :en
puts I18n.load_path.inspect  # This will help you see if the paths are loaded properly

requested_locale = ARGV[0]&.to_sym

unless I18n.available_locales.include?(requested_locale) || requested_locale.nil?
  puts 'We do not support this locale yet 🙁 However, we do support:'
  puts I18n.available_locales.join("\n")
  exit
end

I18n.locale = requested_locale if requested_locale

puts I18n.t(:welcome)

puts I18n.l(Time.now, format: :short)

