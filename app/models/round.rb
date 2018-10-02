class Round < ApplicationRecord
  belongs_to :game

  has_many :questions

  after_create :build_questions

  def build_questions
    (0..5).to_a.each do |x_coord|
      [100, 200, 300, 400, 500].each_with_index do |value, y_coord|
        questions.create(x_coord: x_coord, y_coord: y_coord, value: value)
      end
    end
  end
end
