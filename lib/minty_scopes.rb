require 'minty_scopes/associations'
require 'minty_scopes/except'
require 'minty_scopes/order'
require 'minty_scopes/timestamps'

module MintyScopes
  def self.extended(within)
    within.extend MintyScopes::Associations
    within.extend MintyScopes::Except
    within.extend MintyScopes::Order
    within.extend MintyScopes::Timestamps
  end
end