require File.join(File.dirname(__FILE__), "test_helper.rb")

class Freckle::ProjectTest < Test::Unit::TestCase

  class Freckle::Project
    def self.headers
      { 'X_FRECKLETOKEN' => '123' }
    end
  end

  def setup
    @projects = [{ :id => 1, :name => "Test1" }].to_xml(:root => "projects")
    @project = { :id => 2, :name => "Test2" }.to_xml(:root => "project")
    @no_projects = [].to_xml(:root=> 'projects')
    ActiveResource::HttpMock.respond_to do |mock|
      mock.post   "/api/projects.xml", { 'X_FRECKLETOKEN' => '123' }, @project, 201, "Location" => "/api/projects/1.xml"
      mock.get    "/api/projects.xml?name=Test1", { 'X_FRECKLETOKEN' => '123' }, @projects
      mock.get    "/api/projects.xml?name=Test2", { 'X_FRECKLETOKEN' => '123' }, @no_projects
    end
  end

  def test_finding_project_by_name
    project = Freckle::Project.find(:first, :params => { :name => 'Test1' })
    assert_equal "Test1", project.name
  end

  def test_create_project
    project = Freckle::Project.create(:name => 'Test2')
    assert_equal 2, project.id
  end

  def test_find_or_create_by_name_should_find_existing_project
    project = Freckle::Project.find_or_create_by_name('Test1')
    assert_equal 1, project.id
  end

  def test_find_or_create_by_name_should_create_non_existing_project
    project = Freckle::Project.find_or_create_by_name('Test2')
    assert_equal 2, project.id
  end
end