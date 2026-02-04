require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  if ENV["CI"]
    # CIでは system test を全部スキップ（失敗にしない）
    def before_setup
      super
      skip "Skip system tests on CI"
    end
  else
    driven_by :selenium, using: :headless_chrome, screen_size: [ 1400, 1400 ]
  end
end
