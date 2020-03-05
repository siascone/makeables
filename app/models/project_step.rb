# == Schema Information
#
# Table name: project_steps
#
#  id         :bigint           not null, primary key
#  project_id :integer          not null
#  heading    :string           not null
#  body       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ProjectStep < ApplicationRecord
    validates :project_id, :heading, :body, presence:true

    belongs_to :project,
        foreign_key: :project_id,
        class_name: :Project
end
