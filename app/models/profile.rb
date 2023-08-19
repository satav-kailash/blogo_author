class Profile < ApplicationRecord
  serialize :skills, Array
  SKILLS = %i[HTML CSS ROR]
end
