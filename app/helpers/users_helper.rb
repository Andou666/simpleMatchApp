module UsersHelper
    def job_title_icon
        if @user.profile.job_title == "Developer"
            "<i class='fa fa-code'></i>".html_safe
        elsif @user.profile.job_title == "Enterpreneu"
            "<i class='fa fa-lightbulb'></i>".html_safe
        elsif @user.profile.job_title == "Invester"
            "<i class='fas fa-dollar-sign'></i>".html_safe    
        end 
    end
end