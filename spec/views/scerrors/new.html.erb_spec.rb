require 'spec_helper'

describe "scerrors/new" do
  before(:each) do
    assign(:scerror, stub_model(Scerror,
      :actualerror => "MyText",
      :fixnote => "MyText"
    ).as_new_record)
  end

  it "renders new scerror form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => scerrors_path, :method => "post" do
      assert_select "textarea#scerror_actualerror", :name => "scerror[actualerror]"
      assert_select "textarea#scerror_fixnote", :name => "scerror[fixnote]"
    end
  end
end
