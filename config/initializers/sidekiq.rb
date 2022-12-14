require 'sidekiq'
require 'sidekiq/web'

Sidekiq.configure_client do |config|
    config.redis = { url: ENV['REDIS_URL'],
    namespace: "some_namespace_different_for_each_app", size: 4, network_timeout: 5 }
end
  
Sidekiq.configure_server do |config|
    config.redis = { url: ENV['REDIS_URL'],
    namespace: "some_namespace_different_for_each_app", size: 4, network_timeout: 5 }
end
