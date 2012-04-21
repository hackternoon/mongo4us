require 'spec_helper'

describe "ns/llinks/show" do
  before(:each) do
    @ns_llink = assign(:ns_llink, stub_model(Ns::Llink,
      :href => "Href"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Href/)
  end
end
