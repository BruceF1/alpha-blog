require './test/test_helper' #full path neccessary for ruby 3 and rails 6

class CategoryTest < ActiveSupport::TestCase

def setup
  @category = Category.new(name: "Sports") #create the category object called sports for testing
end

test "category should be valid" do #description with test and do
  assert @category.valid? #assertion to see if category is valid
end

test "name should be present" do
  @category.name = " "
  assert_not @category.valid? #assertion to see if category is false
end

test "name should be unique" do
  @category.save
  @category2 = Category.new(name: "Sports")
  assert_not @category2.valid?
end

test "name should not be too long" do
  @category.name = "a" * 26
  assert_not @category.valid?
end

test "name shout not be too short" do
  @category.name = "aa" 
  assert_not @category.valid?
end

end
