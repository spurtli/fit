#!/usr/bin/env ruby -w
# encoding: UTF-8
#
# = fit.rb -- Fit - FIT file processing library for Ruby
#
# Copyright (c) 2014 by Chris Schlaeger <cs@taskjuggler.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#

require 'fit/FitFile'

module Fit

  def self.read(file, filter = nil)
    FitFile.new.read(file, filter)
  end

  def self.write(file, top_level_record)
    FitFile.new.write(file, top_level_record)
  end

end

