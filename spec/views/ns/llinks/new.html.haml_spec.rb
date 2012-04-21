require 'spec_helper'

describe "ns/llinks/new" do
  before(:each) do
    assign(:ns_llink, stub_model(Ns::Llink,
      :href => "MyString"
    ).as_new_record)
  end

  it "renders new ns_llink form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ns_llinks_path, :method => "post" do
      assert_select "input#ns_llink_href", :name => "ns_llink[href]"
    end
  end
end
