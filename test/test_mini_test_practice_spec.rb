require 'minitest_helper'
require 'mini_test_practice'

describe MiniTestPractice do 
  describe "odd" do 

    before(:each) do 
      @instance = MiniTestPractice::Main.new
    end

    it "has odd method" do
      assert_respond_to(@instance, :odd?)
    end

    it "returns true when args is odd" do 
      assert @instance.odd?(1), "it's not odd number"
    end

    it "returns false when args is not odd" do 
      assert !@instance.odd?(2)
    end

  end
end

