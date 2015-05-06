module Blazer
  class Check < ActiveRecord::Base
    belongs_to :blazer_query, class_name: "Blazer::Query"
  end
end
