require 'spec_helper'

describe "to_dos/new.html.erb" do
  before(:each) do
    assign(:to_do, stub_model(ToDo).as_new_record)
  end

  it "renders new to_do form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => to_dos_path, :method => "post" do
    end
  end
end
