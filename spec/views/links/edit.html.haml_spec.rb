require 'spec_helper'

describe "links/edit" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :href => "MyString",
      :tag1 => "MyString",
      :tag2 => "MyString",
      :tag3 => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => links_path(@link), :method => "post" do
      assert_select "input#link_href", :name => "link[href]"
      assert_select "input#link_tag1", :name => "link[tag1]"
      assert_select "input#link_tag2", :name => "link[tag2]"
      assert_select "input#link_tag3", :name => "link[tag3]"
      assert_select "input#link_user_id", :name => "link[user_id]"
    end
  end
end
