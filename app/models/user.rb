class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable, :confirmable

  has_one :pref
  after_create :initialize_pref

  private
  def initialize_pref
    p = Pref.new do |p|
      p.user_id = self.id # plus whatever else
    end

    if p.save
      self.pref = p
    else
      raise "Error creating preferences"
    end
  end
end
