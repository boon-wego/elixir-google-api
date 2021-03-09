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

defmodule GoogleApi.Content.V2.Model.TransitTable do
  @moduledoc """


  ## Attributes

  *   `postalCodeGroupNames` (*type:* `list(String.t)`, *default:* `nil`) - A list of postal group names. The last value can be `"all other locations"`. Example: `["zone 1", "zone 2", "all other locations"]`. The referred postal code groups must match the delivery country of the service.
  *   `rows` (*type:* `list(GoogleApi.Content.V2.Model.TransitTableTransitTimeRow.t)`, *default:* `nil`) - 
  *   `transitTimeLabels` (*type:* `list(String.t)`, *default:* `nil`) - A list of transit time labels. The last value can be `"all other labels"`. Example: `["food", "electronics", "all other labels"]`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :postalCodeGroupNames => list(String.t()) | nil,
          :rows => list(GoogleApi.Content.V2.Model.TransitTableTransitTimeRow.t()) | nil,
          :transitTimeLabels => list(String.t()) | nil
        }

  field(:postalCodeGroupNames, type: :list)
  field(:rows, as: GoogleApi.Content.V2.Model.TransitTableTransitTimeRow, type: :list)
  field(:transitTimeLabels, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.TransitTable do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.TransitTable.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.TransitTable do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
