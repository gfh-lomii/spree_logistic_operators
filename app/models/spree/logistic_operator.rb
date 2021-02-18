module Spree
  class LogisticOperator < Spree::Base
    whitelisted_ransackable_attributes = %w[name active]

    has_many :shimpments

    scope :actives, -> { where(active: true) }
    scope :inactives, -> { where(active: false) }
  end
end
