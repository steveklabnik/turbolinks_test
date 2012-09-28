require 'spec_helper'
require 'benchmark'

describe "Turbolinks" do
  it "tests performance", :js => true do

    n = 1000
    Benchmark.bm do |x|
      visit "/pages/1"
      3.times { click_link "next" }
      click_link "beginning"
      x.report " no turbolinks" do
        n.times do
          click_link "next"
        end
      end

      visit "/pages/1?turbo=true"
      3.times { click_link "next" }
      click_link "beginning"
      x.report "yes turbolinks" do
        n.times do
          click_link "next"
        end
      end
    end
  end
end
