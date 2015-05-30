ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span "Welcome to Active Admin"
        small "To add dashboard sections, talk to Gabe."
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    
    columns do
      %w( Cluster Person Activity ).each do |resource|
        klass = resource.constantize
        column do
          panel "Recent #{resource.pluralize}" do
            # status_tag 'active', :ok, class: 'important', id: 'status_123', label: klass.count
            ul do
              klass.limit(5).map do |item|
                li link_to(item.name, [:admin, item])
              end
            end
            div{link_to("Manage", [:admin, resource.downcase.pluralize], :class => 'button')}
          end
        end
      end
    end
    
    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
