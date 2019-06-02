#!/usr/bin/env ruby -w
# frozen_string_literal: true

#
# = Record.rb -- Fit - FIT file processing library for Ruby
#
# Copyright (c) 2014 by Chris Schlaeger <cs@taskjuggler.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#

require 'fit/FitDataRecord'

module Fit
  # The Record corresponds to the record FIT message. A Record is a basic set
  # of primary measurements that are associated with a certain timestamp.
  class Record < FitDataRecord
    # Create a new Record object.
    # @param field_values [Hash] Hash that provides initial values for certain
    #        fields.
    def initialize(field_values = {})
      super('record')
      @meta_field_units['pace'] = 'min/km'
      @meta_field_units['run_cadence'] = 'spm'
      set_field_values(field_values)
    end

    def run_cadence
      if @cadence && @fractional_cadence
        (@cadence + @fractional_cadence) * 2
      elsif @cadence
        @cadence * 2
      end
    end

    # Convert the 'speed' field into a running pace. The pace is measured in
    # minutes per Kilometer.
    # @return [Float or nil] pace for this Record in m/s or nil if not
    #         available.
    def pace
      return nil unless @speed

      1000.0 / (@speed * 60.0)
    end
  end
end
