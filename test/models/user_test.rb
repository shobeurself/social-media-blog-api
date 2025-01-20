require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should not save user without password" do
    user = User.new
    user.email = "test@test123421214.com"
    assert_not user.save
  end

  test "should not save user without email" do
    user = User.new
    user.password = "123456"
    user.password_confirmation = "123456"
    assert_not user.save
  end

  test "should not save with password confirmation not matching" do
    user = User.new
    user.password = "123456"
    user.password_confirmation = "12345677"
    user.email = "test@test4294893.com"
    assert_not user.save
  end

  test "user saves" do
    user = User.new
    user.email = "test@test24143.com"
    user.password = "123456"
    user.password_confirmation = "123456"
    assert user.save
    assert user.valid?
    assert user.valid_password?(user.password)
  end

  test "user saves without password confirmation" do
    user = User.new
    user.email = "test@test24143.com"
    user.password = "123456"
    assert user.save
    assert user.valid?
    assert user.valid_password?(user.password)
  end
end
