$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'kirpich'

require 'minitest/autorun'

require 'webmock'
require 'webmock/minitest'

require 'wrong'
require 'wrong/adapters/minitest'

class Minitest::Test
  include Wrong

  def load_fixture(path)
    path = File.expand_path(File.join('..', 'fixtures', path), __FILE__)
    File.read(path)
  end
end
