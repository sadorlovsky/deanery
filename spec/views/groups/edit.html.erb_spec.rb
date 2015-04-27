require 'rails_helper'

RSpec.describe "groups/edit", :type => :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      :code => "MyString",
      :name => "MyString",
      : => "MyString"
    ))
  end

  it "renders the edit group form" do
    render

    assert_select "form[action=?][method=?]", group_path(@group), "post" do

      assert_select "input#group_code[name=?]", "group[code]"

      assert_select "input#group_name[name=?]", "group[name]"

      assert_select "input#group_[name=?]", "group[]"
    end
  end
end
