class Cv < ActiveRecord::Base
  serialize :value, JSON

  def self.latest
    order(:version).first
  end
end
