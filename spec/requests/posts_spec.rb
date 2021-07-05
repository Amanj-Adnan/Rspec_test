require 'rails_helper'



RSpec.describe "/users", type: :request do


  let(:valid_params) do
    {
      post: {
        name:"any thing",
        title:"any thing",
        content:"any thing"
      }
    }
  end

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }


  describe "GET /index" do
  it "renders a successful response" do
    Post.create!
    get posts_url
    expect(response).to be_successful
  end
end

  describe "GET /show" do
  it "renders a successful response" do
    post = Post.create!
    get post_url(post)
    expect(response).to be_successful
  end
end

  describe "GET /new" do
  it "renders a successful response" do
    get new_post_url
    expect(response).to be_successful
  end
end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new User" do
        # post = Post.first_or_create!(name:"any thing" , title:"any thing" , content:"any thing" )
        expect {
          post posts_url, params: valid_params
        }.to change(Post, :count).by(1)
      end

      it "redirects to the created user" do

        post posts_url, params: valid_params
        expect(response).to redirect_to(post_url(Post.last))
      end
    end

    end




end