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

defmodule GoogleApi.Content.V21.Model.RegionalinventoryCustomBatchRequestEntry do
  @moduledoc """
  A batch entry encoding a single non-batch regional inventory request.

  ## Attributes

  *   `batchId` (*type:* `integer()`, *default:* `nil`) - An entry ID, unique within the batch request.
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - The ID of the managing account.
  *   `method` (*type:* `String.t`, *default:* `nil`) - Method of the batch request entry. Acceptable values are: - "`insert`" 
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The ID of the product for which to update price and availability.
  *   `regionalInventory` (*type:* `GoogleApi.Content.V21.Model.RegionalInventory.t`, *default:* `nil`) - Price and availability of the product.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchId => integer() | nil,
          :merchantId => String.t() | nil,
          :method => String.t() | nil,
          :productId => String.t() | nil,
          :regionalInventory => GoogleApi.Content.V21.Model.RegionalInventory.t() | nil
        }

  field(:batchId)
  field(:merchantId)
  field(:method)
  field(:productId)
  field(:regionalInventory, as: GoogleApi.Content.V21.Model.RegionalInventory)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.RegionalinventoryCustomBatchRequestEntry do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.RegionalinventoryCustomBatchRequestEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.RegionalinventoryCustomBatchRequestEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
