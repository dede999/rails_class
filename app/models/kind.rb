class Kind < ApplicationRecord
    has_many :contacts

    def as_json(options={})
        super(
            except: [:created_at, :updated_at],
            include: {
                :contacts => {
                    only: [:name, :c_number, :email]
                }
            }
        )
    end
end
