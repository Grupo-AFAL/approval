# frozen_string_literal: true

module Approval
  module FormNotifiable
    extend ActiveSupport::Concern

    private

    def instrument(operation, payload = {}, &)
      payload.merge!(request: request, user: user, reason: reason)
      ActiveSupport::Notifications.instrument("#{operation}.approval", payload, &)
    end
  end
end
