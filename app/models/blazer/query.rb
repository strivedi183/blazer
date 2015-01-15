module Blazer
  class Query < ActiveRecord::Base
    belongs_to :creator, class_name: Blazer.user_class.to_s

    validates :name, presence: true
    validates :statement, presence: true

    def to_param
      [id, name.gsub("'", "").parameterize].join("-")
    end

  end
end
