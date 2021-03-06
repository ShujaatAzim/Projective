class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ["not-started", "in-progress", "complete"] }

  STATUS_OPTIONS = [
    ["Not Started", "not-started"],
    ["In Progress", "in-progress"],
    ["Complete", "complete"]
  ]

  def color_class
    case status
    when "not-started"
      "secondary"
    when "in-progress"
      "info"
    when "complete"
      "success"
    end
  end

  def readable_status
    case status
    when "not-started"
      "Not Started"
    when "in-progress"
      "In Progress"
    when "complete"
      "Complete"
    end
  end

  def not_started?
    status == "not-started"
  end

  def in_progress?
    status == "in-progress"
  end

  def complete?
    status == "complete"
  end
  
end
