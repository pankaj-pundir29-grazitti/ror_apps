class HomeController < ApplicationController
    def home
        render :template => 'home/index'
    end
end
