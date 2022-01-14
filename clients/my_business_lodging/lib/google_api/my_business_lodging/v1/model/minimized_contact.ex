# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.MyBusinessLodging.V1.Model.MinimizedContact do
  @moduledoc """
  Minimized contact measures implemented by the hotel during COVID-19.

  ## Attributes

  *   `contactlessCheckinCheckout` (*type:* `boolean()`, *default:* `nil`) - No-contact check-in and check-out.
  *   `contactlessCheckinCheckoutException` (*type:* `String.t`, *default:* `nil`) - Contactless check-in check-out exception.
  *   `digitalGuestRoomKeys` (*type:* `boolean()`, *default:* `nil`) - Keyless mobile entry to guest rooms.
  *   `digitalGuestRoomKeysException` (*type:* `String.t`, *default:* `nil`) - Digital guest room keys exception.
  *   `housekeepingScheduledRequestOnly` (*type:* `boolean()`, *default:* `nil`) - Housekeeping scheduled by request only.
  *   `housekeepingScheduledRequestOnlyException` (*type:* `String.t`, *default:* `nil`) - Housekeeping scheduled request only exception.
  *   `noHighTouchItemsCommonAreas` (*type:* `boolean()`, *default:* `nil`) - High-touch items, such as magazines, removed from common areas.
  *   `noHighTouchItemsCommonAreasException` (*type:* `String.t`, *default:* `nil`) - No high touch items common areas exception.
  *   `noHighTouchItemsGuestRooms` (*type:* `boolean()`, *default:* `nil`) - High-touch items, such as decorative pillows, removed from guest rooms.
  *   `noHighTouchItemsGuestRoomsException` (*type:* `String.t`, *default:* `nil`) - No high touch items guest rooms exception.
  *   `plasticKeycardsDisinfected` (*type:* `boolean()`, *default:* `nil`) - Plastic key cards are disinfected or discarded.
  *   `plasticKeycardsDisinfectedException` (*type:* `String.t`, *default:* `nil`) - Plastic keycards disinfected exception.
  *   `roomBookingsBuffer` (*type:* `boolean()`, *default:* `nil`) - Buffer maintained between room bookings.
  *   `roomBookingsBufferException` (*type:* `String.t`, *default:* `nil`) - Room bookings buffer exception.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contactlessCheckinCheckout => boolean() | nil,
          :contactlessCheckinCheckoutException => String.t() | nil,
          :digitalGuestRoomKeys => boolean() | nil,
          :digitalGuestRoomKeysException => String.t() | nil,
          :housekeepingScheduledRequestOnly => boolean() | nil,
          :housekeepingScheduledRequestOnlyException => String.t() | nil,
          :noHighTouchItemsCommonAreas => boolean() | nil,
          :noHighTouchItemsCommonAreasException => String.t() | nil,
          :noHighTouchItemsGuestRooms => boolean() | nil,
          :noHighTouchItemsGuestRoomsException => String.t() | nil,
          :plasticKeycardsDisinfected => boolean() | nil,
          :plasticKeycardsDisinfectedException => String.t() | nil,
          :roomBookingsBuffer => boolean() | nil,
          :roomBookingsBufferException => String.t() | nil
        }

  field(:contactlessCheckinCheckout)
  field(:contactlessCheckinCheckoutException)
  field(:digitalGuestRoomKeys)
  field(:digitalGuestRoomKeysException)
  field(:housekeepingScheduledRequestOnly)
  field(:housekeepingScheduledRequestOnlyException)
  field(:noHighTouchItemsCommonAreas)
  field(:noHighTouchItemsCommonAreasException)
  field(:noHighTouchItemsGuestRooms)
  field(:noHighTouchItemsGuestRoomsException)
  field(:plasticKeycardsDisinfected)
  field(:plasticKeycardsDisinfectedException)
  field(:roomBookingsBuffer)
  field(:roomBookingsBufferException)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessLodging.V1.Model.MinimizedContact do
  def decode(value, options) do
    GoogleApi.MyBusinessLodging.V1.Model.MinimizedContact.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessLodging.V1.Model.MinimizedContact do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end