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

defmodule GoogleApi.CloudIdentity.V1.Model.DeviceUser do
  @moduledoc """
  Represents a user's use of a Device in the Cloud Identity Devices API. A DeviceUser is a resource representing a user's use of a Device

  ## Attributes

  *   `compromisedState` (*type:* `String.t`, *default:* `nil`) - Compromised State of the DeviceUser object
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - When the user first signed in to the device
  *   `firstSyncTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Most recent time when user registered with this service.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Output only. Default locale used on device, in IETF BCP-47 format.
  *   `lastSyncTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Last time when user synced with policies.
  *   `managementState` (*type:* `String.t`, *default:* `nil`) - Output only. Management state of the user on the device.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the DeviceUser in format: `devices/{device_id}/deviceUsers/{user_id}`, where user_id is the ID of the user associated with the user session.
  *   `passwordState` (*type:* `String.t`, *default:* `nil`) - Password state of the DeviceUser object
  *   `userAgent` (*type:* `String.t`, *default:* `nil`) - Output only. User agent on the device for this specific user
  *   `userEmail` (*type:* `String.t`, *default:* `nil`) - Email address of the user registered on the device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compromisedState => String.t(),
          :createTime => DateTime.t(),
          :firstSyncTime => DateTime.t(),
          :languageCode => String.t(),
          :lastSyncTime => DateTime.t(),
          :managementState => String.t(),
          :name => String.t(),
          :passwordState => String.t(),
          :userAgent => String.t(),
          :userEmail => String.t()
        }

  field(:compromisedState)
  field(:createTime, as: DateTime)
  field(:firstSyncTime, as: DateTime)
  field(:languageCode)
  field(:lastSyncTime, as: DateTime)
  field(:managementState)
  field(:name)
  field(:passwordState)
  field(:userAgent)
  field(:userEmail)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIdentity.V1.Model.DeviceUser do
  def decode(value, options) do
    GoogleApi.CloudIdentity.V1.Model.DeviceUser.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIdentity.V1.Model.DeviceUser do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end