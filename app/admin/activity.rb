ActiveAdmin.register Activity do


  permit_params :name, :cluster_id, :type
  
  form do |f|
    inputs do
      input :type, :collection => Activity::TYPES
      input :cluster
      input :name
    end
  end


end
