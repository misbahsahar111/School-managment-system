class Student < ApplicationRecord
    has_many :subjects, through: :std_subjects
    has_many :std_subjects,  dependent: :destroy

    has_many :teachers, through: :std_teachers
    has_many :std_teachers, dependent: :destroy
end
