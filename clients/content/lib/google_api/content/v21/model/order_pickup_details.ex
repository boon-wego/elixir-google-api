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

defmodule GoogleApi.Content.V21.Model.OrderPickupDetails do
  @moduledoc """


  ## Attributes

  *   `address` (*type:* `GoogleApi.Content.V21.Model.OrderAddress.t`, *default:* `nil`) - Address of the pickup location where the shipment should be sent. Note that `recipientName` in the address is the name of the business at the pickup location.
  *   `collectors` (*type:* `list(GoogleApi.Content.V21.Model.OrderPickupDetailsCollector.t)`, *default:* `nil`) - Collectors authorized to pick up shipment from the pickup location.
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - ID of the pickup location.
  *   `pickupType` (*type:* `String.t`, *default:* `nil`) - The pickup type of this order. Acceptable values are: - "`merchantStore`" - "`merchantStoreCurbside`" - "`merchantStoreLocker`" - "`thirdPartyPickupPoint`" - "`thirdPartyLocker`" 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => GoogleApi.Content.V21.Model.OrderAddress.t() | nil,
          :collectors => list(GoogleApi.Content.V21.Model.OrderPickupDetailsCollector.t()) | nil,
          :locationId => String.t() | nil,
          :pickupType => String.t() | nil
        }

  field(:address, as: GoogleApi.Content.V21.Model.OrderAddress)
  field(:collectors, as: GoogleApi.Content.V21.Model.OrderPickupDetailsCollector, type: :list)
  field(:locationId)
  field(:pickupType)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.OrderPickupDetails do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.OrderPickupDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.OrderPickupDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
