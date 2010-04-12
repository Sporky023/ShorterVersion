require 'spec_helper'

describe "/documents/show.haml" do
  include DocumentsHelper
  before(:each) do
    assigns[:document] = @document = Factory.create(:document, :name => "value for name", :original_url => "www.originalurl.com")
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/www\.originalurl\.com/)
  end
end
