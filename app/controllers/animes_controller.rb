class AnimesController < ApplicationController
    def index
        @anime = Cartoon.all
    end

    def new
    end

    def create
        Cartoon.create(name: params[:name])
        redirect_to '/animes'
    end

    def show
        @anime = Cartoon.find(params[:id])
    end

    def edit
        @anime = Cartoon.find(params[:id])
    end

    def update
        @anime = Cartoon.find(params[:id])
        @anime.name = params[:name]
        @anime.save
        redirect_to '/animes'
    end

    def destroy
        @anime = Cartoon.find(params[:id])
        @anime.destroy
        redirect_to '/animes'
    end
end
