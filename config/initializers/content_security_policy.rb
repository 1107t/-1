# config/initializers/content_security_policy.rb
Rails.application.config.content_security_policy do |policy|
    policy.img_src :self, :data, "https://cdn.jsdelivr.net"
end