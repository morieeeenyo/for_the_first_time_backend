FirebaseIdToken.configure do |config|
  config.redis = Redis.new
  config.project_ids = 'for-the-first-time-9e0a3'
end