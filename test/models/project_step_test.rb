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
require 'test_helper'

class ProjectStepTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
