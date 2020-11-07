ActiveAdmin.register Customer do
  # whitelisting
  permit_params :full_name, :phone, :email, :notes, :image

  # DSL Domain Specific Language
  # Formtastic gem
  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :image, as: :file
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end

end
