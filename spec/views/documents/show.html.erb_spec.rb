require 'spec_helper'

describe "/documents/show.html.erb" do
  include DocumentsHelper
  before(:each) do
    assigns[:document] = @document = stub_model(Document,
      :name => "value for name",
      :body => "value for body",
      :original_url => "value for original_url"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ body/)
    response.should have_text(/value\ for\ original_url/)
  end
end
