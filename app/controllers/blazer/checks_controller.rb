module Blazer
  class ChecksController < BaseController
    def index
      @checks = Blazer::Check.joins(:blazer_query).order("blazer_queries.name")
    end

    def new
    end
  end
end
