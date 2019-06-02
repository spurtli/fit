#!/usr/bin/env ruby -w
# frozen_string_literal: true

#
# = Event.rb -- Fit - FIT file processing library for Ruby
#
# Copyright (c) 2014, 2015 by Chris Schlaeger <cs@taskjuggler.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#

require 'fit/FitDataRecord'

module Fit
  class Event < FitDataRecord
    def initialize(field_values = {})
      super('event')
      set_field_values(field_values)
    end

    # Ensure that FitDataRecords have a deterministic sequence. Events are
    # sorted by event_type and then event.
    def <=>(fdr)
      @timestamp == fdr.timestamp ?
        @message.name == fdr.message.name ?
          @event_type == fdr.event_type ?
            @event <=> fdr.event :
            @event_type <=> fdr.event_type :
          RecordOrder.index(@message.name) <=>
            RecordOrder.index(fdr.message.name) :
        @timestamp <=> fdr.timestamp
    end
  end
end
