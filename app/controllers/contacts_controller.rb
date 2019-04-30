class ContactsController < ApplicationController
    before_action :define_current_contact

    def index
        render json: current_user.contacts, methods: [ :profile_url ]
    end

    def show
        render json: current_contact
    end

    def new
        render json: Contact.new
    end

    def create
        contact = Contact.new(contact_params)
        contact.user = current_user
        contact.save
        render json: contact
    end

    def update
        current_contact.update(contact_params)
        render json: current_contact
    end

    def destroy
        current_contact.destroy
        render json: current_contact
    end

    def contact_params
        params.permit(:firstname, :lastname, :primary_number, :secondary_number, :relationship, :profile_pic)
    end

    def define_current_contact
        if params[:id]
            @current_contact = Contact.find(params[:id])
        else
            @current_contact = Contact.new
        end
    end

    def current_contact
        @current_contact
    end

end
