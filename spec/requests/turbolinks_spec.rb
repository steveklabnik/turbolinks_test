require 'spec_helper'
require 'benchmark'

describe "Turbolinks" do
  it "tests performance", :js => true do

    n = 1000
    Benchmark.bm do |x|
      x.report " no turbolinks" do
        visit "/pages/1"

        n.times do
          click_link "next"
        end
      end
      x.report "yes turbolinks" do
        visit "/pages/1?turbo=true"

        n.times do
          click_link "next"
        end
      end
    end
  end
end
