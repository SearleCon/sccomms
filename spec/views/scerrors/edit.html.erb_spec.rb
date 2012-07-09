require 'spec_helper'

describe "scerrors/edit" do
  before(:each) do
    @scerror = assign(:scerror, stub_model(Scerror,
      :actualerror => "MyText",
      :fixnote => "MyText"
    ))
  end

  it "renders the edit scerror form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => scerrors_path(@scerror), :method => "post" do
      assert_select "textarea#scerror_actualerror", :name => "scerror[actualerror]"
      assert_select "textarea#scerror_fixnote", :name => "scerror[fixnote]"
    end
  end
end
