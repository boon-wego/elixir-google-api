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

defmodule GoogleApi.Content.V21.Model.PosSaleResponse do
  @moduledoc """


  ## Attributes

  *   `contentLanguage` (*type:* `String.t`, *default:* `nil`) - Required. The two-letter ISO 639-1 language code for the item.
  *   `gtin` (*type:* `String.t`, *default:* `nil`) - Global Trade Item Number.
  *   `itemId` (*type:* `String.t`, *default:* `nil`) - Required. A unique identifier for the item.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "`content#posSaleResponse`".
  *   `price` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - Required. The price of the item.
  *   `quantity` (*type:* `String.t`, *default:* `nil`) - Required. The relative change of the available quantity. Negative for items returned.
  *   `saleId` (*type:* `String.t`, *default:* `nil`) - A unique ID to group items from the same sale event.
  *   `storeCode` (*type:* `String.t`, *default:* `nil`) - Required. The identifier of the merchant's store. Either a `storeCode` inserted via the API or the code of the store in Google My Business.
  *   `targetCountry` (*type:* `String.t`, *default:* `nil`) - Required. The CLDR territory code for the item.
  *   `timestamp` (*type:* `String.t`, *default:* `nil`) - Required. The inventory timestamp, in ISO 8601 format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentLanguage => String.t() | nil,
          :gtin => String.t() | nil,
          :itemId => String.t() | nil,
          :kind => String.t() | nil,
          :price => GoogleApi.Content.V21.Model.Price.t() | nil,
          :quantity => String.t() | nil,
          :saleId => String.t() | nil,
          :storeCode => String.t() | nil,
          :targetCountry => String.t() | nil,
          :timestamp => String.t() | nil
        }

  field(:contentLanguage)
  field(:gtin)
  field(:itemId)
  field(:kind)
  field(:price, as: GoogleApi.Content.V21.Model.Price)
  field(:quantity)
  field(:saleId)
  field(:storeCode)
  field(:targetCountry)
  field(:timestamp)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.PosSaleResponse do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.PosSaleResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.PosSaleResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
