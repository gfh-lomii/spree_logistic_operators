module Spree
  class LogisticOperator < Spree::Base
    whitelisted_ransackable_attributes = %w[name active]

    has_many :shimpments
  end
end
