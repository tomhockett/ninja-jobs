require 'test_helper'

class JobTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @job = @user.jobs.build(title: "Lorem ipsum", description: "blah blah blah")
  end

  test "should be valid" do
    assert @job.valid?
  end

  test "user id should be present" do
    @job.user_id = nil
    assert_not @job.valid?
  end

  test "description should be present" do
    @job.description = "   "
    assert_not @job.valid?
  end

  test "description should be at most 255 characters" do
    @job.description = "a" * 256
    assert_not @job.valid?
  end

  test "order should be most recent first" do
    assert_equal jobs(:most_recent), Job.first
  end

  # TODO: Fix this test
  # test "users associated jobs should be deleted" do
  #   @user.save
  #   @user.jobs.create!(title: "A job", description: "I am a job.")
  #   assert_difference 'Job.count', -1 do
  #     @user.destroy
  #   end
  # end
end
