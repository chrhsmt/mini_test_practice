module Odd

  def test_it_has_odd_method
    assert_respond_to(@instance, :odd?)
  end

  def test_it_returns_true_when_args_is_odd
    assert @instance.odd?(1), "it's not odd number"
  end

  def test_it_returns_false_when_args_is_not_odd
    assert !@instance.odd?(2)
  end

end
