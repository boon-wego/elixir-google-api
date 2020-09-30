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

defmodule GoogleApi.AnalyticsData.V1alpha.Model.Entity do
  @moduledoc """
  The unique identifier of the property whose events are tracked.

  ## Attributes

  *   `propertyId` (*type:* `String.t`, *default:* `nil`) - A Google Analytics App + Web property id.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :propertyId => String.t()
        }

  field(:propertyId)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1alpha.Model.Entity do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1alpha.Model.Entity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1alpha.Model.Entity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end