require 'spec_helper'

describe "tasks/edit.html.erb" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :text => "MyString",
      :order => 1,
      :done => "MyString"
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path(@task), :method => "post" do
      assert_select "input#task_text", :name => "task[text]"
      assert_select "input#task_order", :name => "task[order]"
      assert_select "input#task_done", :name => "task[done]"
    end
  end
end
