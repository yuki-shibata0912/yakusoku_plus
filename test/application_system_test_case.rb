require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  if ENV["CI"]
  puts "CI環境のため system test をスキップします"
  exit 0
  end

  driven_by :selenium, using: :headless_chrome, screen_size: [ 1400, 1400 ]
end
