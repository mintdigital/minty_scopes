require File.join(File.dirname(__FILE__), '..', 'test_helper')

class TimestampsTest < Test::Unit::TestCase # :nodoc:
  def setup
    @today = Date.today
  end
  
  context "created_on" do
    should "complain if passed a non date or time" do
      assert_raise(RuntimeError){ Post.created_on(nil).proxy_options }
    end
  
    should "return all objects created on the given date" do
      assert_equal({:conditions =>
                        { :created_at => (@today.beginning_of_day..@today.end_of_day) }
                   }, Post.created_on(@today).proxy_options)
    end
  end
  
  context "modified_on" do
    should "complain if passed a non date or time" do
      assert_raise(RuntimeError){ Post.modified_on(nil).proxy_options }
    end
  
    should "return all objects modified on the given date" do
      assert_equal({:conditions =>
                      { :modified_on => (@today.beginning_of_day..@today.end_of_day) }
                   }, Post.modified_on(@today).proxy_options)
    end
  end
  
end