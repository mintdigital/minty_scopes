require File.join(File.dirname(__FILE__), '..', 'test_helper')

class AssociationsTest < Test::Unit::TestCase # :nodoc:
  
  context "with" do
    should "complain if passed nil" do
      assert_raise(RuntimeError) { Post.with(nil).proxy_options }
    end
    
    should "return all objects with associated items" do
      assert_equal( { :joins => :comments, :group => 'posts.id' },
                    Post.with(:comments).proxy_options )
    end
  end
  
  context "without" do
    should "complain if passed nil" do
      assert_raise(RuntimeError) { Post.with(nil).proxy_options }
    end
    
    should "return all objects without associated items" do
      assert_equal( { :joins => "LEFT JOIN comments ON posts.id = comments.post_id", 
                      :conditions => {"comments.id" => nil} },
                    Post.without(:comments).proxy_options )
    end
  end
  
  context "including" do
    should "return objects with given include" do
      assert_equal( { :include => [:comments] },
                    Post.including(:comments).proxy_options )
    end
    
    should "return objects with all of given includes" do
      assert_equal( { :include => [:comments, {:author => :avator}] },
                    Post.including(:comments, {:author => :avator}).proxy_options )
    end
  end
end