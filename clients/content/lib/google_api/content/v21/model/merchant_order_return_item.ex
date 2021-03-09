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

defmodule GoogleApi.Content.V21.Model.MerchantOrderReturnItem do
  @moduledoc """


  ## Attributes

  *   `customerReturnReason` (*type:* `GoogleApi.Content.V21.Model.CustomerReturnReason.t`, *default:* `nil`) - The reason that the customer chooses to return an item.
  *   `itemId` (*type:* `String.t`, *default:* `nil`) - Product level item ID. If the returned items are of the same product, they will have the same ID.
  *   `merchantRejectionReason` (*type:* `GoogleApi.Content.V21.Model.MerchantRejectionReason.t`, *default:* `nil`) - The reason that the merchant chose to reject an item return.
  *   `merchantReturnReason` (*type:* `GoogleApi.Content.V21.Model.RefundReason.t`, *default:* `nil`) - The reason that merchant chooses to accept a return item.
  *   `product` (*type:* `GoogleApi.Content.V21.Model.OrderLineItemProduct.t`, *default:* `nil`) - Product data from the time of the order placement.
  *   `refundableAmount` (*type:* `GoogleApi.Content.V21.Model.MonetaryAmount.t`, *default:* `nil`) - Maximum amount that can be refunded for this return item.
  *   `returnItemId` (*type:* `String.t`, *default:* `nil`) - Unit level ID for the return item. Different units of the same product will have different IDs.
  *   `returnShipmentIds` (*type:* `list(String.t)`, *default:* `nil`) - IDs of the return shipments that this return item belongs to.
  *   `shipmentGroupId` (*type:* `String.t`, *default:* `nil`) - ID of the original shipment group. Provided for shipments with invoice support.
  *   `shipmentUnitId` (*type:* `String.t`, *default:* `nil`) - ID of the shipment unit assigned by the merchant. Provided for shipments with invoice support.
  *   `state` (*type:* `String.t`, *default:* `nil`) - State of the item. Acceptable values are: - "`canceled`" - "`new`" - "`received`" - "`refunded`" - "`rejected`" 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customerReturnReason => GoogleApi.Content.V21.Model.CustomerReturnReason.t() | nil,
          :itemId => String.t() | nil,
          :merchantRejectionReason =>
            GoogleApi.Content.V21.Model.MerchantRejectionReason.t() | nil,
          :merchantReturnReason => GoogleApi.Content.V21.Model.RefundReason.t() | nil,
          :product => GoogleApi.Content.V21.Model.OrderLineItemProduct.t() | nil,
          :refundableAmount => GoogleApi.Content.V21.Model.MonetaryAmount.t() | nil,
          :returnItemId => String.t() | nil,
          :returnShipmentIds => list(String.t()) | nil,
          :shipmentGroupId => String.t() | nil,
          :shipmentUnitId => String.t() | nil,
          :state => String.t() | nil
        }

  field(:customerReturnReason, as: GoogleApi.Content.V21.Model.CustomerReturnReason)
  field(:itemId)
  field(:merchantRejectionReason, as: GoogleApi.Content.V21.Model.MerchantRejectionReason)
  field(:merchantReturnReason, as: GoogleApi.Content.V21.Model.RefundReason)
  field(:product, as: GoogleApi.Content.V21.Model.OrderLineItemProduct)
  field(:refundableAmount, as: GoogleApi.Content.V21.Model.MonetaryAmount)
  field(:returnItemId)
  field(:returnShipmentIds, type: :list)
  field(:shipmentGroupId)
  field(:shipmentUnitId)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.MerchantOrderReturnItem do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.MerchantOrderReturnItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.MerchantOrderReturnItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
