class Actor < ApplicationRecord
	serialize :films,Array
	serialize :role,Array
end
