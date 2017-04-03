module Data.Interval
  ( Duration
  , Interval
  , RecurringInterval
  ) where

import Prelude

data Interval a
  = StartEnd      a a
  | StartDuration Duration a
  | DurationEnd   a Duration
  | JustDuration  Duration

data RecurringInterval a = RecurringInterval (Maybe Int) (Interval a)
data Duration
  = DurationWeek Week
  | DurationDateTime
    { year :: Year
    , month :: Month
    , day :: Day
    , hours :: Hours
    , minutes :: Minutes
    , seconds :: Seconds
    , milliseconds :: Milliseconds
    }

data Year = Int
data Month = Int
data Day = Int
data Week = Int
data Hours = Int
data Minutes = Int
data Seconds = Int
data Milliseconds = Int
