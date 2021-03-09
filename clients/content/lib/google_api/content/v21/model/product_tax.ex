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

defmodule GoogleApi.Content.V21.Model.ProductTax do
  @moduledoc """


  ## Attributes

  *   `country` (*type:* `String.t`, *default:* `nil`) - The country within which the item is taxed, specified as a CLDR territory code.
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - The numeric ID of a location that the tax rate applies to as defined in the AdWords API.
  *   `postalCode` (*type:* `String.t`, *default:* `nil`) - The postal code range that the tax rate applies to, represented by a ZIP code, a ZIP code prefix using * wildcard, a range between two ZIP codes or two ZIP code prefixes of equal length. Examples: 94114, 94*, 94002-95460, 94*-95*.
  *   `rate` (*type:* `float()`, *default:* `nil`) - The percentage of tax rate that applies to the item price.
  *   `region` (*type:* `String.t`, *default:* `nil`) - The geographic region to which the tax rate applies.
  *   `taxShip` (*type:* `boolean()`, *default:* `nil`) - Should be set to true if tax is charged on shipping.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :country => String.t() | nil,
          :locationId => String.t() | nil,
          :postalCode => String.t() | nil,
          :rate => float() | nil,
          :region => String.t() | nil,
          :taxShip => boolean() | nil
        }

  field(:country)
  field(:locationId)
  field(:postalCode)
  field(:rate)
  field(:region)
  field(:taxShip)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ProductTax do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ProductTax.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ProductTax do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
