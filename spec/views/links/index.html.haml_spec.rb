require 'spec_helper'

describe "links/index" do
  before(:each) do
    assign(:links, [
      stub_model(Link,
        :href => "Href",
        :tag1 => "Tag1",
        :tag2 => "Tag2",
        :tag3 => "Tag3",
        :user_id => 1
      ),
      stub_model(Link,
        :href => "Href",
        :tag1 => "Tag1",
        :tag2 => "Tag2",
        :tag3 => "Tag3",
        :user_id => 1
      )
    ])
  end

  it "renders a list of links" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Href".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tag1".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tag2".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tag3".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
