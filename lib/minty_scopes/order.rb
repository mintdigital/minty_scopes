module MintyScopes
  module Order
    
    def self.extended(within)
      within.class_eval do
        # Get only the newest items. Limit by given parameter.
        # Default to per_page if will_paginate is installed or 10
        named_scope :newest, lambda { |*limit| {
          :order => "#{quoted_table_name}.created_at DESC",
          :limit => limit.empty? ? (per_page rescue 10) : limit.first
        } }

        # Get only the oldest items. Limit by given parameter.
        # Default to per_page if will_paginate is installed or 10
        named_scope :oldest, lambda { |*limit| {
          :order => "#{quoted_table_name}.created_at ASC",
          :limit => limit.empty? ? (per_page rescue 10) : limit.first
        } }
      end
    end
    
  end
end