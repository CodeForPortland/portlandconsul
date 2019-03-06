module Milestoneable
  extend ActiveSupport::Concern

  included do
    has_many :milestones, as: :milestoneable, dependent: :destroy

    scope :with_milestones, -> { joins(:milestones).distinct }

    has_many :progress_bars, as: :progressable

    def primary_progress_bar
      progress_bars.primary.first
    end

    def secondary_progress_bars
      progress_bars.secondary
    end
  end
end
