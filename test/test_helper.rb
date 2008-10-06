$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')
require 'minty_scopes'

require 'test/unit'
require 'rubygems'
require 'shoulda'
require 'activerecord'
require 'activesupport'

class Post < ActiveRecord::Base
  def self.quoted_table_name; 'posts'; end
  def self.primary_key; 'id'; end
  extend MintyScopes
end

class PaginatedPost < Post
  def self.per_page; 30; end
  extend MintyScopes
end
