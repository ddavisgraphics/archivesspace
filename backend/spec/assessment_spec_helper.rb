class AssessmentSpecHelper
  def self.setup_global_ratings
    DB.open do |db|
      db[:assessment_attribute_definition].filter(:repo_id => 1).delete
      db[:assessment_attribute_definition].insert(:repo_id => 1, :label => "Global Rating", :type => "rating", :position => 0)
    end
  end

  def self.sample_definitions
    [
      {
        'label' => 'Global Rating',
        'type' => 'rating',
        'global' => true,
      },
      {
        'label' => 'Rating 1',
        'type' => 'rating',
      },
      {
        'label' => 'Rating 2',
        'type' => 'rating',
      },
      {
        'label' => 'Format 1',
        'type' => 'format',
      },
      {
        'label' => 'Format 2',
        'type' => 'format',
      },
      {
        'label' => 'Conservation Issue 1',
        'type' => 'conservation_issue',
      },
      {
        'label' => 'Conservation Issue 2',
        'type' => 'conservation_issue',
      }
    ]
  end
end
