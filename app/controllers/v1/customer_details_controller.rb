# frozen_string_literal: true

module V1
  #:nodoc:
  class CustomerDetailsController < ApplicationController
    include AuthenticateOpenCall

    before_action :authenticate

    def index
      @customers = CustomerDetail.all
      json_response(@customers)
    end
  end
end
