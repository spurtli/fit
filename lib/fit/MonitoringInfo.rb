#!/usr/bin/env ruby -w
# frozen_string_literal: true

#
# = MonitoringInfo.rb -- Fit - FIT file processing library for Ruby
#
# Copyright (c) 2015 by Chris Schlaeger <cs@taskjuggler.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#

require 'fit/FitDataRecord'

module Fit
  class MonitoringInfo < FitDataRecord
    def initialize(field_values = {})
      super('monitoring_info')
      set_field_values(field_values)
    end
  end
end
