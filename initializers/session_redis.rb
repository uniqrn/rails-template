Rails.application.config.session_store :redis_store, servers: "redis://#{ENV['RDS_SERVICE_HOST']}:#{ENV['RDS_SERVICE_PORT']||6379}/#{ENV['RDS_DB_NUM']||0}/session", expire_in: 180.minutes
