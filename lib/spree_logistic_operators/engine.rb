module SpreeLogisticOperators
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_logistic_operators'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end

      unless Spree::PermittedAttributes.shipment_attributes.include?(:spree_logistic_operator_id)
        Spree::PermittedAttributes.shipment_attributes << :spree_logistic_operator_id
      end
    end

    config.to_prepare(&method(:activate).to_proc)
  end
end
