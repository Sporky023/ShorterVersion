require 'spec_helper'

describe "/documents/index.haml" do
  include DocumentsHelper

  before(:each) do
    assigns[:documents] = [
      Factory.create(:document, :name => "value for name1", :original_url => "value for original_url1"),
      Factory.create(:document, :name => "value for name2", :original_url => "value for original_url2")
    ]
  end

  it "renders a list of documents" do
    render
    response.should contain("value for name1")
    response.should contain("value for original_url1")
    
    response.should contain("value for name2")
    response.should contain("value for original_url2")
  end
end
