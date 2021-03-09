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

defmodule GoogleApi.Content.V21.Model.RegionalinventoryCustomBatchResponseEntry do
  @moduledoc """
  A batch entry encoding a single non-batch regional inventory response.

  ## Attributes

  *   `batchId` (*type:* `integer()`, *default:* `nil`) - The ID of the request entry this entry responds to.
  *   `errors` (*type:* `GoogleApi.Content.V21.Model.Errors.t`, *default:* `nil`) - A list of errors defined if and only if the request failed.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "content#regionalinventoryCustomBatchResponseEntry".
  *   `regionalInventory` (*type:* `GoogleApi.Content.V21.Model.RegionalInventory.t`, *default:* `nil`) - Price and availability of the product.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchId => integer() | nil,
          :errors => GoogleApi.Content.V21.Model.Errors.t() | nil,
          :kind => String.t() | nil,
          :regionalInventory => GoogleApi.Content.V21.Model.RegionalInventory.t() | nil
        }

  field(:batchId)
  field(:errors, as: GoogleApi.Content.V21.Model.Errors)
  field(:kind)
  field(:regionalInventory, as: GoogleApi.Content.V21.Model.RegionalInventory)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.RegionalinventoryCustomBatchResponseEntry do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.RegionalinventoryCustomBatchResponseEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.RegionalinventoryCustomBatchResponseEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
