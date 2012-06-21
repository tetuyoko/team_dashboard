class Widget < ActiveRecord::Base
  belongs_to :dashboard
  store :settings, :accessors => []

  validates :name, :presence => true
  validates :dashboard_id, :presence => true
  
  after_initialize :set_defaults

  after_create :add_to_dashboard_layout
  after_destroy :remove_from_dashboard_layout

  class << self
    def for_dashboard(id)
      where(:dashboard_id => id)
    end
  end

  protected

  def add_to_dashboard_layout
    self.dashboard.layout << self.id
    self.dashboard.save!
  end

  def remove_from_dashboard_layout
    self.dashboard.layout = self.dashboard.layout.reject { |e| e == self.id  }
    self.dashboard.save!
  end

  def set_defaults
    self.size = 1 unless self.size
    self.range = '30-minutes' unless self.range
    self.kind = 'graph' unless self.kind
    self.update_interval = 10 unless self.update_interval
  end

end