class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :person_num, presence: true

  validate :start_date_cannot_be_in_the_past
  validate :end_date_after_start_date

  private

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.current
      errors.add(:start_date, "は今日以降の日付にしてください")
    end
  end

  def end_date_after_start_date
    if start_date.present? && end_date.present? && end_date < start_date
      errors.add(:end_date, "はチェックイン日以降の日付にしてください")
    end
  end
end
