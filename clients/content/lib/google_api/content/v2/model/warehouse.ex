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

defmodule GoogleApi.Content.V2.Model.Warehouse do
  @moduledoc """
  A fulfillment warehouse, which stores and handles inventory.

  ## Attributes

  *   `businessDayConfig` (*type:* `GoogleApi.Content.V2.Model.BusinessDayConfig.t`, *default:* `nil`) - Business days of the warehouse. If not set, will be Monday to Friday by default.
  *   `cutoffTime` (*type:* `GoogleApi.Content.V2.Model.WarehouseCutoffTime.t`, *default:* `nil`) - Required. The latest time of day that an order can be accepted and begin processing. Later orders will be processed in the next day. The time is based on the warehouse postal code.
  *   `handlingDays` (*type:* `String.t`, *default:* `nil`) - Required. The number of days it takes for this warehouse to pack up and ship an item. This is on the warehouse level, but can be overridden on the offer level based on the attributes of an item.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name of the warehouse. Must be unique within account.
  *   `shippingAddress` (*type:* `GoogleApi.Content.V2.Model.Address.t`, *default:* `nil`) - Required. Shipping address of the warehouse.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :businessDayConfig => GoogleApi.Content.V2.Model.BusinessDayConfig.t() | nil,
          :cutoffTime => GoogleApi.Content.V2.Model.WarehouseCutoffTime.t() | nil,
          :handlingDays => String.t() | nil,
          :name => String.t() | nil,
          :shippingAddress => GoogleApi.Content.V2.Model.Address.t() | nil
        }

  field(:businessDayConfig, as: GoogleApi.Content.V2.Model.BusinessDayConfig)
  field(:cutoffTime, as: GoogleApi.Content.V2.Model.WarehouseCutoffTime)
  field(:handlingDays)
  field(:name)
  field(:shippingAddress, as: GoogleApi.Content.V2.Model.Address)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.Warehouse do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.Warehouse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.Warehouse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
