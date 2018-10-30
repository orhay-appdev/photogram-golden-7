class PicturesController < ApplicationController
    def index
        @photo_list = Photo.all
        
        render("pic_templates/all_photos.html.erb")
    end
    
    def new_form
        render("pic_templates/blank_form.html.erb")
    end
    
    def ceate_row
        p = Photo.new

        p.source = params.fetch("the_source")
        p.caption = params.fetch("the_caption")
        p.save
        
        #render("pic_templates/row_created.html.erb")
        redirect_to("/photos")
    end
    
    def show_detailes
        the_id = params.fetch("an_id_number")
        @the_photo = Photo.find(the_id)

        render("pic_templates/show.html.erb")
    end
    
    def edit_form
        the_id = params.fetch("some_id_number")
        @photo_to_edit = Photo.find(the_id)
        render("pic_templates/edit.html.erb")
    end
    
    def update_row
        the_id = params.fetch("the_id_number")
        p = Photo.find(the_id)
        
        p.source = params.fetch("the_url")
        p.caption = params.fetch("the_caption")
        
        p.save
        
        #render("pic_templates/update.html.erb")
        redirect_to("/photos/"+the_id)
    end
    
    def destroy_row
        the_id = params.fetch("bye_id_number")
        the_photo = Photo.find(the_id)
        
        the_photo.destroy
        redirect_to("/photos")
        #render("pic_templates/delete.html.erb")
    end
end