class Cv < ActiveRecord::Base
  serialize :value, JSON

  validates_uniqueness_of :version

  def self.latest
    order(:version).first
  end
end
