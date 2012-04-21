require 'spec_helper'

describe "links/new" do
  before(:each) do
    assign(:link, stub_model(Link,
      :href => "MyString",
      :tag1 => "MyString",
      :tag2 => "MyString",
      :tag3 => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => links_path, :method => "post" do
      assert_select "input#link_href", :name => "link[href]"
      assert_select "input#link_tag1", :name => "link[tag1]"
      assert_select "input#link_tag2", :name => "link[tag2]"
      assert_select "input#link_tag3", :name => "link[tag3]"
      assert_select "input#link_user_id", :name => "link[user_id]"
    end
  end
end
