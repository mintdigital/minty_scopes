module MintyScopes
  module Except
    
    def self.extended(within)
      within.class_eval do
        # Allow easy rejection of items.
        # Can take an a single id or ActiveRecord object, or an array of them
        named_scope :except, lambda { |*args|
          args.flatten!
          raise "The 'except' named_scope expects no nil values." unless args.all?
          { :conditions => ["#{quoted_table_name}.#{primary_key} NOT IN (?)", args] }
        }
      end
    end
    
  end
end