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

defmodule GoogleApi.Content.V2.Model.LiaPosDataProvider do
  @moduledoc """


  ## Attributes

  *   `posDataProviderId` (*type:* `String.t`, *default:* `nil`) - The ID of the POS data provider.
  *   `posExternalAccountId` (*type:* `String.t`, *default:* `nil`) - The account ID by which this merchant is known to the POS data provider.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :posDataProviderId => String.t() | nil,
          :posExternalAccountId => String.t() | nil
        }

  field(:posDataProviderId)
  field(:posExternalAccountId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.LiaPosDataProvider do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.LiaPosDataProvider.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.LiaPosDataProvider do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
