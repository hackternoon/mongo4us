require 'spec_helper'

describe "ns/llinks/edit" do
  before(:each) do
    @ns_llink = assign(:ns_llink, stub_model(Ns::Llink,
      :href => "MyString"
    ))
  end

  it "renders the edit ns_llink form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ns_llinks_path(@ns_llink), :method => "post" do
      assert_select "input#ns_llink_href", :name => "ns_llink[href]"
    end
  end
end
