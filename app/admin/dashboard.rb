ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  # div class: "blank_slate_container", id: "dashboard_default_message" do
  # end
  content title: proc{ I18n.t("active_admin.dashboard") }do
    settings = Metum.instance
    columns do
      column do
        panel "Front page" do
          form_for [:admin, settings], html: { class: 'slogan-form' }  do |f|
            fieldset do
              h3 "Slogan"
              f.text_field :slogan, value: settings.slogan
              f.submit 'Update slogan', class: 'right'
            end
          end

          h3 "Banner"
          form_for [:admin, settings], html: { :multipart => true } do |f|
            div class: 'banner-container' do
              img class: 'site-banner', src: settings.site_banner if settings.site_banner
            end
            f.file_field :site_banner, class: "preview preview-banner"
            f.submit 'Update banner', class: 'right'
          end
        end
      end

      column do
        panel "About page", class: "panel-about" do
          form_for [:admin, settings], html: { class: 'about-form' }  do |f|
            fieldset do
              f.text_area :slogan, class: :editable, value: settings.about
              f.submit 'Update About page content', class: 'right'
            end
          end
        end
      end
    end
  end # content
end
