class Subject < ApplicationRecord
has_many :students, through: :std_subjects
has_many :std_subjects, dependent: :destroy

has_many :teachers, through: :teacher_subjects
has_many :teacher_subjects, dependent: :destroy
end
