module Spree
  module Admin
    class LogisticOperatorsController < ResourceController

      def index
        session[:return_to] = request.url
        respond_with(@collection)
      end

      private

      def find_resource
        Spree::LogisticOperator.find(params[:id])
      end

      def collection
        params[:q] = {} if params[:q].blank?
        logistic_operators = super
        @search = logistic_operators.ransack(params[:q])
        @collection = @search.result.page(params[:page]).per(params[:per_page])
      end
    end
  end
end
