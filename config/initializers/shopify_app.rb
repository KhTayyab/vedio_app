ShopifyApp.configure do |config|
  config.application_name = "Sample Video"
  config.api_key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  config.secret = "xxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  config.scope = "read_products, write_products, read_orders, write_orders"
  config.embedded_app = true
end
