require 'spec_helper'
require 'benchmark'

describe "Turbolinks" do
  it "tests performance", :js => true do

    n = 100
    Benchmark.bm do |x|
      x.report "   nothing" do
        visit "/pages/1"

        n.times do
          click_link "next"
        end
      end
      x.report "turbolinks" do
        visit "/pages/1?turbo=true"

        n.times do
          click_link "next"
        end
      end

      x.report "      pjax" do
        visit "/pages/1?pjax=true"

        n.times do
          click_link "next"
        end
      end
    end
  end
end
