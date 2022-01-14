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

defmodule GoogleApi.Content.V21.Model.AccountShippingImprovements do
  @moduledoc """
  Not available for MCAs [accounts](https://support.google.com/merchants/answer/188487). By turning on [automatic shipping improvements](https://support.google.com/merchants/answer/10027038), you are allowing Google to improve the accuracy of your delivery times shown to shoppers using Google. More accurate delivery times, especially when faster, typically lead to better conversion rates. Google will improve your estimated delivery times based on various factors: * Delivery address of an order * Current handling time and shipping time settings * Estimated weekdays or business days * Parcel tracking data

  ## Attributes

  *   `allowShippingImprovements` (*type:* `boolean()`, *default:* `nil`) - Enables automatic shipping improvements.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowShippingImprovements => boolean() | nil
        }

  field(:allowShippingImprovements)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountShippingImprovements do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountShippingImprovements.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountShippingImprovements do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end