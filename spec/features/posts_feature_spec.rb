require 'rails_helper'

describe 'posts' do
    context 'no posts have been added' do
        it 'should display a prompt to add a post' do
            visit '/posts'
            expect(page).to have_content 'No posts'
            expect(page).to have_link 'Add a post'
        end
        
        # it "should allow to add a post" do
        #     visit '/posts'
        #     click_link 'Add a post'
        #     expect(current_path).to eq "/posts/new"

        # end
   #          fill_in 'Caption', with: 'The future of transportation'
			# attach_file('Image', File.expand_path('~/desktop/spock.jpg'))
   #          click_button "Share it"
   #          expect(page).to have_content 'No posts'
	end
	
    context 'some posts have been added' do
    	before do
    		Post.create(caption: 'The future of transportation')
    	end

        it "should display posts" do
            visit '/posts'  
        	expect(page).to have_content('The future of transportation')
	        expect(page).not_to have_content('No posts')

        end
    end
end