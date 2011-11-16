require 'spec_helper'

describe "to_dos/edit.html.erb" do
  before(:each) do
    @to_do = assign(:to_do, stub_model(ToDo))
  end

  it "renders the edit to_do form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => to_dos_path(@to_do), :method => "post" do
    end
  end
end
