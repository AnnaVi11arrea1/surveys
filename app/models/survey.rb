class Survey < ApplicationRecord
  has_many :questions
  belongs_to :user
  has_many :answers, through: :questions

  cattr_accessor :form_steps do
    %w[one two three four five six seven eight nine ten eleven twelve]
  end

  def required_for_step?(step)
    # All fields are required if no form step is present
    return true if form_step.nil?

    # All fields from previous steps are required if the current step is being accessed
    true if self.form_steps.index(step.to_s) <= self.form_steps.index(form_step)
  end

  attr_accessor :form_step

  validates :answers, presence: true
end
