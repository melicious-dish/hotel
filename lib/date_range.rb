require 'date'
require_relative '../lib/reservation'

module Hotel
  class DateRange

    attr_reader :check_in, :check_out

    def initialize(check_in, check_out)

      @check_in = Date.parse(check_in)
      @check_out = Date.parse(check_out)

      unless @check_out > @check_in
        raise StandardError.new("Check-out can not be before check-in. Chech-out is: #{@check_out} check-in is #{@check_in}")
      end

    end
    # - Find duration of stay
    def duration_of_stay
      duration_of_stay = @check_out - @check_in
      return duration_of_stay
    end

  end
end
