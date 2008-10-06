require File.join(File.dirname(__FILE__), '..', 'test_helper')

class ExceptTest < Test::Unit::TestCase # :nodoc:
  
  context "except" do
    should "complain if passed nil" do
      assert_raise(RuntimeError){ Post.except(nil).proxy_options }
    end
    
    should "complain if passed an array with nil" do
      assert_raise(RuntimeError) { Post.except([99,nil,101]).proxy_options }
    end
    
    should "return all but the given object" do
      item = 123
      assert_equal( { :conditions => ["posts.id NOT IN (?)", [item]] },
                    Post.except(item).proxy_options )
    end
    
    should "return all but the items in the given list" do
      list = [123, 456, 7]
      assert_equal( { :conditions => ["posts.id NOT IN (?)", list] },
                    Post.except(list).proxy_options )
    end
    
    should "return all but the given items" do
      maple, oak = 42, 24
      assert_equal( { :conditions => ["posts.id NOT IN (?)", [maple, oak]] },
                    Post.except(maple, oak).proxy_options )
    end
  end
  
end