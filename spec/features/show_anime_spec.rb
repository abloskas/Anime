require 'rails_helper'

RSpec.describe 'anime show page' do
    it 'displays info about anime' do
        anime = Cartoon.create(name: 'Naruto')

        visit "/animes/#{anime.id}"
        expect(page).to have_text(anime.name)
    end
end