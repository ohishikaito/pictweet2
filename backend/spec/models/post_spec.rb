# == Schema Information
#
# Table name: posts
#
#  id          :bigint           not null, primary key
#  deleted_at  :datetime
#  is_special  :boolean          default(FALSE)
#  likes_count :integer          default(0), not null
#  name        :string(255)
#  sub_name    :string(255)
#  video       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end