module MintyScopes
  module Timestamps
    
    def self.extended(within)
      within.class_eval do
        # Allow filtering by day of created_on
        # Argument must be a Date, Time, or DateTime
        named_scope :created_on, lambda { |date|
          raise "The 'created_on' named_scope expects a Date, Time or DateTime object" unless date.respond_to? :end_of_day
          { :conditions => {:created_at => (date.beginning_of_day..date.end_of_day)} }
        }
        
        # Allow filtering by day of modified_on
        # Argument must be a Date, Time, or DateTime
        named_scope :modified_on, lambda { |date|
          raise "The 'modified_on' named_scope expects a Date, Time or DateTime object" unless date.respond_to? :end_of_day
          { :conditions => {:modified_on => (date.beginning_of_day..date.end_of_day)} }
        }
      end
    end
    
  end
end