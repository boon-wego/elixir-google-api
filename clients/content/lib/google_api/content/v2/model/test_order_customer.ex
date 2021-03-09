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

defmodule GoogleApi.Content.V2.Model.TestOrderCustomer do
  @moduledoc """


  ## Attributes

  *   `email` (*type:* `String.t`, *default:* `nil`) - Required. Email address of the customer. Acceptable values are: - "`pog.dwight.schrute@gmail.com`" - "`pog.jim.halpert@gmail.com`" - "`penpog.pam.beesly@gmail.comding`" 
  *   `explicitMarketingPreference` (*type:* `boolean()`, *default:* `nil`) - Deprecated. Please use marketingRightsInfo instead.
  *   `fullName` (*type:* `String.t`, *default:* `nil`) - Full name of the customer.
  *   `marketingRightsInfo` (*type:* `GoogleApi.Content.V2.Model.TestOrderCustomerMarketingRightsInfo.t`, *default:* `nil`) - Customer's marketing preferences.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :email => String.t() | nil,
          :explicitMarketingPreference => boolean() | nil,
          :fullName => String.t() | nil,
          :marketingRightsInfo =>
            GoogleApi.Content.V2.Model.TestOrderCustomerMarketingRightsInfo.t() | nil
        }

  field(:email)
  field(:explicitMarketingPreference)
  field(:fullName)
  field(:marketingRightsInfo, as: GoogleApi.Content.V2.Model.TestOrderCustomerMarketingRightsInfo)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.TestOrderCustomer do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.TestOrderCustomer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.TestOrderCustomer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
