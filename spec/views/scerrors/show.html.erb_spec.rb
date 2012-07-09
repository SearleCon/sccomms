require 'spec_helper'

describe "scerrors/show" do
  before(:each) do
    @scerror = assign(:scerror, stub_model(Scerror,
      :actualerror => "MyText",
      :fixnote => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
