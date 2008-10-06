require File.join(File.dirname(__FILE__), '..', 'test_helper')

class OrderTest < Test::Unit::TestCase # :nodoc:
  
  context "newest" do
    should "return most recent items" do
      assert Post.newest.proxy_options[:order] = 'posts.created_at DESC'
    end
    
    should "default to 10 items" do
      assert_equal 10, Post.newest.proxy_options[:limit]
    end
    
    should "use the given limit" do
      assert_equal 20, Post.newest(20).proxy_options[:limit]
    end
    
    should "default to per_page if it exists" do
      assert_equal 30, PaginatedPost.newest.proxy_options[:limit]
    end
    
    should "use the given limit over per_page" do
      assert_equal 15, PaginatedPost.newest(15).proxy_options[:limit]
    end
  end
  
  context "oldest" do
    should "return oldest items" do
      assert Post.oldest.proxy_options[:order] = 'posts.created_at ASC'
    end
    
    should "default to 10 items" do
      assert_equal 10, Post.oldest.proxy_options[:limit]
    end
    
    should "use the given limit" do
      assert_equal 20, Post.oldest(20).proxy_options[:limit]
    end
    
    should "default to per_page if it exists" do
      assert_equal 30, PaginatedPost.oldest.proxy_options[:limit]
    end
  
    should "use the given limit over per_page" do
      assert_equal 15, PaginatedPost.oldest(15).proxy_options[:limit]
    end
  end
  
end
