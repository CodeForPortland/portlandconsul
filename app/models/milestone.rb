class Milestone < ActiveRecord::Base
  include Imageable
  include Documentable
  documentable max_documents_allowed: 3,
               max_file_size: 3.megabytes,
               accepted_content_types: [ "application/pdf" ]

  translates :title, :description, touch: true
  include Globalizable

  belongs_to :milestoneable, polymorphic: true
  belongs_to :status

  validates :milestoneable, presence: true
  validates :publication_date, presence: true

  before_validation :assign_milestone_to_translations
  validates_translation :description, presence: true, unless: -> { status_id.present? }

  scope :order_by_publication_date, -> { order(publication_date: :asc, created_at: :asc) }
  scope :published,                 -> { where("publication_date <= ?", Date.current) }
  scope :with_status,               -> { where("status_id IS NOT NULL") }

  def self.title_max_length
    80
  end

  private

    def assign_milestone_to_translations
      translations.each { |translation| translation.globalized_model = self }
    end
end
