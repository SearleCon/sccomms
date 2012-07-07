require 'spec_helper'

describe "frameworks/show" do
  before(:each) do
    @framework = assign(:framework, stub_model(Framework,
      :name => "Name",
      :description => "MyText",
      :version => "Version"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Version/)
  end
end
