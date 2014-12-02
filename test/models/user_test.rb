require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = ''
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = '   '
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = "Q" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "Q" * 256
    assert_not @user.valid?
  end

  test "email validation should accept valid email addresses" do
    valid_addresses = %w[test@example.com TEST@FOO.COM
                       A_TEsT@foo.bar.org first.last@foo.jp
                       test.test@baz.cn
                        ]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid email addresses" do
    invalid_addresses = %w[test@example,com test_at_foo.org
                           test.name@example. foo@bar_baz.com
                           foo@bar+baz.com
                          ]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
end
