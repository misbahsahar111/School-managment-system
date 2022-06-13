class Teacher < ApplicationRecord
    has_many :subjects, through: :teacher_subjects
    has_many :teacher_subjects,  dependent: :destroy

    has_many :students, through: :std_teachers
    has_many :std_teachers, dependent: :destroy
end
