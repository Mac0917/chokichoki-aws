class HomeController < ApplicationController
    def user_top
        @points = Hairdresser.where(status:1).pluck(:reputation_point).max(5)
        @hairdresser_model = Hairdresser
        @i = 1
        @n = 0
        @user_page = "user"
        gon.body = "white"
        gon.fix = "header"
        if session[:double] == true
            gon.double = true
            session[:double] = nil
        end
        #@home_user = "exist"
    end
    def hairdresser_top
        @hairdresser_page = "hairdresser"
        gon.body ="white"
        gon.fix = "header"
        gon.display_none = "none"
    end

    def about
    end

    def video
        gon.skyway_key = ENV['SKYWAY_KEY']
    end
end
