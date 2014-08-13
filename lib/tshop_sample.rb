require 'faker'
require 'spree_core'
require 'tshop/sample'

module TshopSample
  class Engine < Rails::Engine
    engine_name 'tshop_sample'

    def self.load_samples
      Tshop::Sample.load_sample("payment_methods")
      Tshop::Sample.load_sample("shipping_categories")
      Tshop::Sample.load_sample("shipping_methods")
      Tshop::Sample.load_sample("tax_categories")
      Tshop::Sample.load_sample("tax_rates")

      Tshop::Sample.load_sample("products")
      Tshop::Sample.load_sample("taxons")
      Tshop::Sample.load_sample("option_values")
      Tshop::Sample.load_sample("product_option_types")
      Tshop::Sample.load_sample("product_properties")
      Tshop::Sample.load_sample("prototypes")
      Tshop::Sample.load_sample("variants")
      Tshop::Sample.load_sample("stock")
      Tshop::Sample.load_sample("assets")

      Tshop::Sample.load_sample("orders")
      Tshop::Sample.load_sample("adjustments")
      Tshop::Sample.load_sample("payments")
    end
  end
end
