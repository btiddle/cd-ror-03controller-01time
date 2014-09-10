class TimesController < ApplicationController
  def main
    time = Time.now
    @time = time.strftime("%A %B %d, %Y")
    @time2 = time.strftime("%I:%M:%S %P")
  end
end
