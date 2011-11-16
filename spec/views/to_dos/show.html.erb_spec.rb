require 'spec_helper'

describe "to_dos/show.html.erb" do
  before(:each) do
    @to_do = assign(:to_do, stub_model(ToDo))
  end

  it "renders attributes in <p>" do
    render
  end
end
