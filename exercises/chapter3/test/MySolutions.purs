module Test.MySolutions where

import Prelude

import Data.AddressBook (AddressBook, Entry)
import Data.List (filter, head, nubBy, null)
import Data.Maybe (Maybe)

-- Note to reader: Add your solutions to this file


removeDuplicates :: AddressBook -> AddressBook
removeDuplicates book = nubBy filterEntry book
  where
  filterEntry :: Entry -> Entry -> Boolean
  filterEntry a b = a.firstName == b.firstName && a.lastName == b.lastName


findEntryByStreet :: String -> AddressBook -> Maybe Entry
findEntryByStreet streetName = (filter filterEntry) >>> head where
  filterEntry :: Entry -> Boolean
  filterEntry entry = entry.address.street == streetName

isInBook :: String -> String -> AddressBook -> Boolean
isInBook firstName lastName book = not null $ filter filterEntry book
  where
  filterEntry :: Entry -> Boolean
  filterEntry entry = entry.firstName == firstName && entry.lastName == lastName


