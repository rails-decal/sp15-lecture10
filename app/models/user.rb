# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  role                   :integer          default(0)
#

class User < ActiveRecord::Base
  enum role: [ :user, :admin, :moderator ] # Converts role to string for helpers.

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :quits
  # The id of the user matches the follower_id column on the follows table
  has_many :follows, foreign_key: :follower_id
  # The users that are returned by having the method followed mapped onto the follows.
  has_many :followed_users, through: :follows, source: :followed
  # The quits that are posted by the the people this user follows
  has_many :followed_users_quits, through: :followed_users, source: :quits

  validates :name, presence: true
end
