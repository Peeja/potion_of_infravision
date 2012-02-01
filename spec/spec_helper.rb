require "rspec"

RSpec.configure do |config|
  config.mock_framework = :rr
end

class String
  def unindent
    gsub /^#{self[/\A\s*/]}/, ''
  end
end
