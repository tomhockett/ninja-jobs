require 'test_helper'

class JobTest < ActiveSupport::TestCase
  def setup
    @job = Job.new(title: "I am a title", company: "Example Company", location: "Somewhere", description: "I am a description!")
  end

  test "job should be valid" do
    assert @job.valid?
  end

  test "title should be present" do
    @job.title = "    "
    assert_not @job.valid?
  end

  test "company should be present" do
    @job.company = "    "
    assert_not @job.valid?
  end
  
  test "location should be present" do
    @job.location = "    "
    assert_not @job.valid?
  end
  
  test "description should be present" do
    @job.description = "    "
    assert_not @job.valid?
  end
end
