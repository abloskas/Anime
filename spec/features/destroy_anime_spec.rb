require 'rails_helper'

RSpec.describe 'anime update page' do
    it 'destroys anime' do
        anime = Cartoon.create(name:"Naruto")

        visit '/animes'
        expect(page).to have_text("Naruto")
        click_button 'Delete'
        expect(page).to_not have_text("Naruto")
    end
end