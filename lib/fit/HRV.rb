#!/usr/bin/env ruby -w
# frozen_string_literal: true

#
# = RR_Intervals.rb -- Fit - FIT file processing library for Ruby
#
# Copyright (c) 2015 by Chris Schlaeger <cs@taskjuggler.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#

require 'fit/FitDataRecord'

module Fit
  # The Heart Rate Variability or HRV data is contained in message number 78.
  # It is an array of values that represent the time in seconds since the
  # previous heart beat (R-R interval).
  class HRV < FitDataRecord
    def initialize(field_values = {})
      super('hrv')
      set_field_values(field_values)
    end

    def check(index); end
  end
end
