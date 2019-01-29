require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @job = jobs(:most_recent)
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'Job.count' do
      post jobs_path, params: { job: { title: "A Title", description: "A description" } }
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Job.count' do
      delete job_path(@job)
    end
    assert_redirected_to login_url
  end
end
