#!/usr/bin/env ruby -w
# frozen_string_literal: true

#
# = PhysiologicalMetrics.rb -- Fit - FIT file processing library for Ruby
#
# Copyright (c) 2017 by Chris Schlaeger <cs@taskjuggler.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#

require 'fit/FitDataRecord'

module Fit
  # This class corresponds to the physiological_metrics FIT message.
  class PhysiologicalMetrics < FitDataRecord
    # Create a new PhysiologicalMetrics object.
    # @param field_values [Hash] Hash that provides initial values for certain
    #        fields.
    def initialize(field_values = {})
      super('physiological_metrics')
      set_field_values(field_values)
    end
  end
end
