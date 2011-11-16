require 'spec_helper'

describe "to_dos/index.html.erb" do
  before(:each) do
    assign(:to_dos, [
      stub_model(ToDo),
      stub_model(ToDo)
    ])
  end

  it "renders a list of to_dos" do
    render
  end
end
