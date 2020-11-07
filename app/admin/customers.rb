ActiveAdmin.register Customer do
  # whitelisting
  permit_params :full_name, :phone, :email, :notes, :image

end
