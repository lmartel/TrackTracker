class Track < Sequel::Model
    seedable
    many_to_one :department
    one_to_many :requirements

    case_insensitive_attr :name

    def has_core?
        name.include?('UNDERGRAD')
    end

    def self.columns
        [:id, :name, :url, :units_min, :department_id]
    end
end
