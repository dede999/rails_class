class KindSerializer < ActiveModel::Serializer
  attributes :id, :description#, link(:contact) { contact_path () }
  has_many :contacts

end
