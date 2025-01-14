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

defmodule GoogleApi.AndroidPublisher.V3.Model.ProductPurchase do
  @moduledoc """
  A ProductPurchase resource indicates the status of a user's inapp product purchase.

  ## Attributes

  *   `acknowledgementState` (*type:* `integer()`, *default:* `nil`) - The acknowledgement state of the inapp product. Possible values are: 0. Yet to be acknowledged 1. Acknowledged
  *   `consumptionState` (*type:* `integer()`, *default:* `nil`) - The consumption state of the inapp product. Possible values are: 0. Yet to be consumed 1. Consumed
  *   `developerPayload` (*type:* `String.t`, *default:* `nil`) - A developer-specified string that contains supplemental information about an order.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This kind represents an inappPurchase object in the androidpublisher service.
  *   `obfuscatedExternalAccountId` (*type:* `String.t`, *default:* `nil`) - An obfuscated version of the id that is uniquely associated with the user's account in your app. Only present if specified using https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedaccountid when the purchase was made.
  *   `obfuscatedExternalProfileId` (*type:* `String.t`, *default:* `nil`) - An obfuscated version of the id that is uniquely associated with the user's profile in your app. Only present if specified using https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedprofileid when the purchase was made.
  *   `orderId` (*type:* `String.t`, *default:* `nil`) - The order id associated with the purchase of the inapp product.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The inapp product SKU. May not be present.
  *   `purchaseState` (*type:* `integer()`, *default:* `nil`) - The purchase state of the order. Possible values are: 0. Purchased 1. Canceled 2. Pending
  *   `purchaseTimeMillis` (*type:* `String.t`, *default:* `nil`) - The time the product was purchased, in milliseconds since the epoch (Jan 1, 1970).
  *   `purchaseToken` (*type:* `String.t`, *default:* `nil`) - The purchase token generated to identify this purchase. May not be present.
  *   `purchaseType` (*type:* `integer()`, *default:* `nil`) - The type of purchase of the inapp product. This field is only set if this purchase was not made using the standard in-app billing flow. Possible values are: 0. Test (i.e. purchased from a license testing account) 1. Promo (i.e. purchased using a promo code) 2. Rewarded (i.e. from watching a video ad instead of paying)
  *   `quantity` (*type:* `integer()`, *default:* `nil`) - The quantity associated with the purchase of the inapp product. If not present, the quantity is 1.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - ISO 3166-1 alpha-2 billing region code of the user at the time the product was granted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acknowledgementState => integer() | nil,
          :consumptionState => integer() | nil,
          :developerPayload => String.t() | nil,
          :kind => String.t() | nil,
          :obfuscatedExternalAccountId => String.t() | nil,
          :obfuscatedExternalProfileId => String.t() | nil,
          :orderId => String.t() | nil,
          :productId => String.t() | nil,
          :purchaseState => integer() | nil,
          :purchaseTimeMillis => String.t() | nil,
          :purchaseToken => String.t() | nil,
          :purchaseType => integer() | nil,
          :quantity => integer() | nil,
          :regionCode => String.t() | nil
        }

  field(:acknowledgementState)
  field(:consumptionState)
  field(:developerPayload)
  field(:kind)
  field(:obfuscatedExternalAccountId)
  field(:obfuscatedExternalProfileId)
  field(:orderId)
  field(:productId)
  field(:purchaseState)
  field(:purchaseTimeMillis)
  field(:purchaseToken)
  field(:purchaseType)
  field(:quantity)
  field(:regionCode)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.ProductPurchase do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.ProductPurchase.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.ProductPurchase do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
