config.action_mailer.raise_delivery_errors = true
config.action_mailer.delivery_method = :smtp
config.action_mailer.default_url_options = { host: 'THIS_DOMAIN' }
config.action_mailer.smtp_settings = {
  address: 'MAIL_HOST' || "smtp.sendgrid.net",
  port: 'MAIL_PORT' || 2525,
  domain: 'MAIL_FROM_DOMAIN',
  user_name: 'MAIL_USERNAME',
  password: 'MAIL_PASSWORD'
}
