class Trial < ApplicationRecord
    has_many :clicks, dependent: :destroy
end
