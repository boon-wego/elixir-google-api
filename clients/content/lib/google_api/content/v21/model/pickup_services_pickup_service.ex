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

defmodule GoogleApi.Content.V21.Model.PickupServicesPickupService do
  @moduledoc """


  ## Attributes

  *   `carrierName` (*type:* `String.t`, *default:* `nil`) - The name of the carrier (e.g., `"UPS"`). Always present.
  *   `country` (*type:* `String.t`, *default:* `nil`) - The CLDR country code of the carrier (e.g., "US"). Always present.
  *   `serviceName` (*type:* `String.t`, *default:* `nil`) - The name of the pickup service (e.g., `"Access point"`). Always present.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :carrierName => String.t() | nil,
          :country => String.t() | nil,
          :serviceName => String.t() | nil
        }

  field(:carrierName)
  field(:country)
  field(:serviceName)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.PickupServicesPickupService do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.PickupServicesPickupService.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.PickupServicesPickupService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
