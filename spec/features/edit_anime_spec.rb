require 'rails_helper'

RSpec.describe 'anime edit page' do
    it 'displays a form to edit anime' do
        anime = Cartoon.create(name:'Naruto')

        visit "/animes/#{anime.id}/edit"

        expect(find_field('Name').value).to eq(anime.name)
    end
end