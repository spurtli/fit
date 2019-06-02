#!/usr/bin/env ruby -w
# frozen_string_literal: true

#
# = FitFile_spec.rb -- Fit - FIT file processing library for Ruby
#
# Copyright (c) 2014, 2015 by Chris Schlaeger <cs@taskjuggler.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'fit/GeoMath'

describe Fit::GeoMath do
  it 'should compute a distance between 2 points' do
    p0_lat = 48.180506536737084
    p0_lon = 11.611978523433208
    points = [
      # latitude, longitude, distance to p0 in meters
      [48.180506536737084, 11.611978523433208, 0.0],
      [48.18047543987632, 11.61195664666593, 3.821],
      [48.18034409545362, 11.611852794885635, 20.339],
      [48.17970883101225, 11.611351054161787, 100.225]
    ]
    points.each do |p|
      expect(Fit::GeoMath.distance(
               p0_lat, p0_lon, p[0], p[1]
             )).to be_within(0.001).of(p[2])
    end
  end
end
