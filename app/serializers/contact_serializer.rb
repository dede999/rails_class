class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name , :c_number, :email
  belongs_to :kind do
    link(:related) { contact_kind_url (object.id) } # especificação JSON API
  end

  link(:self) { contact_url (object.id) }

end
