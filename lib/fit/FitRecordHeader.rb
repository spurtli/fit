#!/usr/bin/env ruby -w
# encoding: UTF-8
#
# = FitRecordHeader.rb -- Fit - FIT file processing library for Ruby
#
# Copyright (c) 2014, 2017 by Chris Schlaeger <cs@taskjuggler.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#

module Fit

  class FitRecordHeader < BinData::Record

    bit1 :normal

    bit1 :message_type, :onlyif => :normal?

    bit1 :developer_data_flag, :onlyif => :normal?
    bit1 :reserved, :onlyif => :normal?
    choice :local_message_type, :selection => :normal do
      bit4 0
      bit2 1
    end
    bit5 :time_offset, :onlyif => :compressed?

    def normal?
      normal.snapshot == 0
    end

    def compressed?
      normal.snapshot == 1
    end

  end

end
