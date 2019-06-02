#!/usr/bin/env ruby -w
# frozen_string_literal: true

#
# = FileId.rb -- Fit - FIT file processing library for Ruby
#
# Copyright (c) 2014 by Chris Schlaeger <cs@taskjuggler.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#

require 'fit/FitDataRecord'

module Fit
  class FileId < FitDataRecord
    def initialize(field_values = {})
      super('file_id')
      @serial_number = 1_234_567_890
      # Ignore the sub-seconds to avoid problems when comparing records.
      @time_created = Time.at(Time.now.to_i)
      @manufacturer = 'development'
      @file_type = 'activity'

      set_field_values(field_values)
    end
  end
end
