ActiveAdmin.register Person do

  permit_params :name, :phone, :email, :address, :street1, :street2, :city, :state, :zip, :cluster_id, :dob
  
  form do |f|
    semantic_errors
    inputs do
      input :cluster
      input :name
      input :phone
      input :email
      input :dob, :as => :datepicker#, datepicker_options: { min_date: 100.years.ago, :max_date => Date.today}
      
      inputs do
        input :street1
        input :street2
        input :city
        input :state
        input :zip
      end
    end
    actions
  end
  
end
