# == Schema Information
#
# Table name: projects
#
#  id          :bigint           not null, primary key
#  user_id     :integer          not null
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#
class Project < ApplicationRecord
    validates :user_id, :title, presence:true

    belongs_to :user,
        foreign_key: :user_id,
        class_name: :User

    # belongs_to :category,
    #     foreign_key: :category_id,
    #     class_name: :Category

    has_many :steps,
        foreign_key: :project_id,
        class_name: :ProjectStep

    has_many :comments,
        foreign_key: :project_id,
        class_name: :Comment

    has_one_attached :project_photo

end
