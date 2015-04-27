require 'rails_helper'

RSpec.describe "groups/index", :type => :view do
  before(:each) do
    assign(:groups, [
      Group.create!(
        :code => "Code",
        :name => "Name",
        : => ""
      ),
      Group.create!(
        :code => "Code",
        :name => "Name",
        : => ""
      )
    ])
  end

  it "renders a list of groups" do
    render
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
