require 'spec_helper'

describe "sccommands/show" do
  before(:each) do
    @sccommand = assign(:sccommand, stub_model(Sccommand,
      :commandstr => "Commandstr",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Commandstr/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
