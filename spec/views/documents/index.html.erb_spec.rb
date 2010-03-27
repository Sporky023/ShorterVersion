require 'spec_helper'

describe "/documents/index.html.erb" do
  include DocumentsHelper

  before(:each) do
    assigns[:documents] = [
      stub_model(Document,
        :name => "value for name",
        :body => "value for body",
        :original_url => "value for original_url"
      ),
      stub_model(Document,
        :name => "value for name",
        :body => "value for body",
        :original_url => "value for original_url"
      )
    ]
  end

  it "renders a list of documents" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for body".to_s, 2)
    response.should have_tag("tr>td", "value for original_url".to_s, 2)
  end
end
