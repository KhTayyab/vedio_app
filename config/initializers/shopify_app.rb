ShopifyApp.configure do |config|
  config.application_name = "Sample Video"
  config.api_key = "aa49d2e369cb566fad48d18e302ec62b"
  config.secret = "495c41b7ab36dd5213ee788ecf690643"
  config.scope = "read_products, write_products, read_orders, write_orders"
  config.embedded_app = true
end
