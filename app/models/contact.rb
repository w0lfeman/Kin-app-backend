class Contact < ApplicationRecord
    include Rails.application.routes.url_helpers 

    belongs_to :user
    has_one_attached :profile_pic


    def profile_url
        begin
            url_for(self.profile_pic)
        rescue => error
            ""
        end
    end

    # def profile_url
    #     # if(self.profile_pic == nil) 
    #     #     url_for(self.profile_pic)
    #     # else
    #         ''
    #     # end
    # end

end
