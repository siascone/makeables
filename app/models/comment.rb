# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  user_id    :integer          not null
#  project_id :integer          not null
#  body       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ApplicationRecord
    validates :user_id, :project_id, :body, presence:true

    belongs_to :user,
        foreign_key: :user_id,
        class_name: :User

    belongs_to :project,
        foreign_key: :project_id,
        class_name: :Project
end
