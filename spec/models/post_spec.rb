require 'rails_helper'

RSpec.describe Post, type: :model do

  context  "validation test" do

    it 'ensure name presence' do
      post= Post.new(title:"human" , content:'lols').save

      expect(post).to eq(false )
    end

    it 'Should save successfully' do
      post= Post.new(name:"amanj" ,  title:"human" , content:'lols').save

      expect(post).to eq(true )
    end

  end

  context "scope test" do

  end

end
