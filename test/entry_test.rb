require File.join(File.dirname(__FILE__), "test_helper.rb")

class Freckle::ProjectTest < Test::Unit::TestCase

  class Freckle::Project
    def self.headers
      { 'X_FRECKLETOKEN' => '123' }
    end
  end

  def setup
    @entry = Freckle::Entry.new
    @projects = [{ :id => 1, :name => "Test1" }].to_xml(:root => "projects")
    ActiveResource::HttpMock.respond_to do |mock|
      mock.get    "/api/projects.xml?name=Test1", { 'X_FRECKLETOKEN' => '123' }, @projects
    end
  end

  def test_should_have_today_as_default_date
    assert_equal Date.today, @entry.attributes[:date]
  end

  def test_should_allow_default_date_to_be_overwritten
    assert_equal '2009/11/10', Freckle::Entry.new({ :date => '2009/11/10' }).date
  end

  def test_attribute_project_id_when_entry_has_project
    @entry.project = Freckle::Project.new(:id => 1, :name => 'Test1')
    assert_equal 1, @entry.attributes[:project_id]
  end

  def test_attribute_project_id_when_entry_has_no_project
    assert_nil @entry.attributes[:project_id]
  end

  def test_set_project_name_should_assing_project
    @entry.project_name = 'Test1'
    assert_equal 1, @entry.attributes[:project_id]
  end

  def test_minute_validation
    ['2h', '100', '50min'].each do |min|
      entry = Freckle::Entry.new(:minutes => min)
      assert entry.valid?
    end

    ['2ah', '1x0', '50)min'].each do |min|
      entry = Freckle::Entry.new(:minutes => min)
      puts min
      assert !entry.valid?
    end
  end

  def test_entry_does_not_get_saved_when_invalid
    entry = Freckle::Entry.new(:minutes => 'invalid')
    assert !entry.save
  end
end