class Contact < ApplicationRecord
    belongs_to :kind

    def as_json(options={})
        super(
            except: [:created_at, :updated_at],
            include: {kind: {
                only: :description
            }}
        )
    end
end
