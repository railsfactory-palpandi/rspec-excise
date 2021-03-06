require 'spec_helper'

describe "widgets/edit" do
  before(:each) do
    @widget = assign(:widget, stub_model(Widget,
      :name => ""
    ))
  end

  it "renders the edit widget form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", widget_path(@widget), "post" do
      assert_select "input#widget_name[name=?]", "widget[name]"
    end
  end
end
