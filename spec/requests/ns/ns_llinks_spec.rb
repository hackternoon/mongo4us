require 'spec_helper'

describe "Ns::Llinks" do
  describe "GET /ns_llinks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get ns_llinks_path
      response.status.should be(200)
    end
  end
end
