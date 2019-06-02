#!/usr/bin/env ruby -w
# frozen_string_literal: true

#
# = FitFilter.rb -- Fit - FIT file processing library for Ruby
#
# Copyright (c) 2014 by Chris Schlaeger <cs@taskjuggler.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#

module Fit
  class FitFilter < Struct.new(:record_numbers, :record_indexes, :field_names,
                               :ignore_undef)

    def initialize
      super
      self[:ignore_undef] = false
    end
  end
end
