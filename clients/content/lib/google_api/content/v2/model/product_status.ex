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

defmodule GoogleApi.Content.V2.Model.ProductStatus do
  @moduledoc """
  The status of a product, i.e., information about a product computed asynchronously.

  ## Attributes

  *   `creationDate` (*type:* `String.t`, *default:* `nil`) - Date on which the item has been created, in ISO 8601 format.
  *   `dataQualityIssues` (*type:* `list(GoogleApi.Content.V2.Model.ProductStatusDataQualityIssue.t)`, *default:* `nil`) - DEPRECATED - never populated
  *   `destinationStatuses` (*type:* `list(GoogleApi.Content.V2.Model.ProductStatusDestinationStatus.t)`, *default:* `nil`) - The intended destinations for the product.
  *   `googleExpirationDate` (*type:* `String.t`, *default:* `nil`) - Date on which the item expires in Google Shopping, in ISO 8601 format.
  *   `itemLevelIssues` (*type:* `list(GoogleApi.Content.V2.Model.ProductStatusItemLevelIssue.t)`, *default:* `nil`) - A list of all issues associated with the product.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "`content#productStatus`"
  *   `lastUpdateDate` (*type:* `String.t`, *default:* `nil`) - Date on which the item has been last updated, in ISO 8601 format.
  *   `link` (*type:* `String.t`, *default:* `nil`) - The link to the product.
  *   `product` (*type:* `GoogleApi.Content.V2.Model.Product.t`, *default:* `nil`) - Product data after applying all the join inputs.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The ID of the product for which status is reported.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the product.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationDate => String.t() | nil,
          :dataQualityIssues =>
            list(GoogleApi.Content.V2.Model.ProductStatusDataQualityIssue.t()) | nil,
          :destinationStatuses =>
            list(GoogleApi.Content.V2.Model.ProductStatusDestinationStatus.t()) | nil,
          :googleExpirationDate => String.t() | nil,
          :itemLevelIssues =>
            list(GoogleApi.Content.V2.Model.ProductStatusItemLevelIssue.t()) | nil,
          :kind => String.t() | nil,
          :lastUpdateDate => String.t() | nil,
          :link => String.t() | nil,
          :product => GoogleApi.Content.V2.Model.Product.t() | nil,
          :productId => String.t() | nil,
          :title => String.t() | nil
        }

  field(:creationDate)

  field(:dataQualityIssues,
    as: GoogleApi.Content.V2.Model.ProductStatusDataQualityIssue,
    type: :list
  )

  field(:destinationStatuses,
    as: GoogleApi.Content.V2.Model.ProductStatusDestinationStatus,
    type: :list
  )

  field(:googleExpirationDate)
  field(:itemLevelIssues, as: GoogleApi.Content.V2.Model.ProductStatusItemLevelIssue, type: :list)
  field(:kind)
  field(:lastUpdateDate)
  field(:link)
  field(:product, as: GoogleApi.Content.V2.Model.Product)
  field(:productId)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.ProductStatus do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.ProductStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.ProductStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
