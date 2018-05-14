require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true lw rag3t false yb2a l test fail
  # end

  ##ana hna b test an l user model byresond ll db
  ##ana lw 3ndy 50 attribute l mfrod a test l 50 kolhom
  test "user has email" do
  u= User.new(email: "deena@gmail.com")
  u.save
  assert u.email == "deena@gmail.com"
    #assert true lw rag3t false yb2a l test fail
  end

  test "users count" do
  assert User.count == 2
    #assert true lw rag3t false yb2a l test fail
  end
  
end
