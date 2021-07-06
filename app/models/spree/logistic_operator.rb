module Spree
  class LogisticOperator < Spree::Base
    whitelisted_ransackable_attributes = %w[name active]

    has_many :shimpments

    scope :actives, -> { where(active: true) }
    scope :inactives, -> { where(active: false) }

    CABIFY_API_URL = 'https://cabify-sandbox.com/api/v3/graphql'

    def cabify?
      name.downcase.eql? 'cabify'
    end
  end
end
