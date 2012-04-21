require 'spec_helper'

describe "ns/llinks/index" do
  before(:each) do
    assign(:ns_llinks, [
      stub_model(Ns::Llink,
        :href => "Href"
      ),
      stub_model(Ns::Llink,
        :href => "Href"
      )
    ])
  end

  it "renders a list of ns/llinks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Href".to_s, :count => 2
  end
end
