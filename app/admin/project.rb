ActiveAdmin.register Project do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :description, :country, :city, :position, :pre_slideshow_content, :post_slideshow_content, :banner, :published, bottom_pictures_attributes: [:id, :picture, :type, :_destroy], slideshow_pictures_attributes: [:id, :picture, :type, :_destroy]

  index do
    id_column
    column :title
    column :description
    column :pre_slideshow_content do |project|
      content = sanitize(project.pre_slideshow_content, tags: [])
      content[0..50]
    end
    column :post_slideshow_content do |project|
      content = sanitize(project.post_slideshow_content, tags: [])
      content[0..50]
    end
    column :published
    actions
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    project = f.object

    f.inputs "Details" do
      f.input :title
      f.input :description
      f.input :country
      f.input :position
      f.input :published, label: "Show this project ?"
    end

    f.inputs "Pre slideshow content" do
      f.input :pre_slideshow_content, label: false, input_html: { class: 'editable-small' }
    end
    f.inputs "Post slideshow content" do
      f.input :post_slideshow_content, label: false, input_html: {  class: 'editable-small' }
    end

    picture_fields_for(f, :banner)
    pictures_fields_for(f, :slideshow)
    pictures_fields_for(f, :bottom)

    f.actions
  end
end

  def pictures_fields_for(f, type)
    model = f.object
    pictures = model.send("#{type}_pictures")

    f.inputs "#{type.capitalize} pictures", :multipart => true do
      li "No #{type} picture uploaded yet." unless pictures.any?

      f.has_many "#{type}_pictures".to_sym, :allow_destroy => true, :heading => false, :new_record => true do |picture_form|
        picture_form.input :picture, as: :file, :hint => image_tag(picture_form.object.picture.url), input_html: { class: "preview" }
        picture_form.input :picture_cache, :as => :hidden
        picture_form.input :type, as: :hidden, input_html: { value: type.capitalize }
      end
    end
  end

  def picture_fields_for(f, type)
    model = f.object
    picture = model.send("#{type}")

    f.inputs type.capitalize do
      li "No #{type} picture uploaded yet." if picture.blank?

      f.input type, as: :file, hint: image_tag(picture.url), input_html: { class: "preview" }
      f.input "#{type}_cache".to_sym, as: :hidden
    end
  end
