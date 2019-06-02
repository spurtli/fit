#!/usr/bin/env ruby -w
# frozen_string_literal: true

#
# = DataSources.rb -- Fit - FIT file processing library for Ruby
#
# Copyright (c) 2015 by Chris Schlaeger <cs@taskjuggler.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#

require 'fit/FitDataRecord'

module Fit
  # The DataSources objects are generated by message 22. This message type is
  # not documented by Garmin and hence the message name and all field names
  # and their interpretation are guessed. Unless this message gets officially
  # documented, all names are subject to change. Even minor version changes of
  # this library can break the API for this message type.
  class DataSources < FitDataRecord
    def initialize(field_values = {})
      super('data_sources')
      set_field_values(field_values)
    end

    def check(index); end
  end
end