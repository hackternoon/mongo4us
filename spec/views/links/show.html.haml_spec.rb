require 'spec_helper'

describe "links/show" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :href => "Href",
      :tag1 => "Tag1",
      :tag2 => "Tag2",
      :tag3 => "Tag3",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Href/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tag1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tag2/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tag3/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
