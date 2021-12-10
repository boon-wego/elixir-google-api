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

defmodule GoogleApi.APIKeys.V2.Model.V2BrowserKeyRestrictions do
  @moduledoc """
  The HTTP referrers (websites) that are allowed to use the key.

  ## Attributes

  *   `allowedReferrers` (*type:* `list(String.t)`, *default:* `nil`) - A list of regular expressions for the referrer URLs that are allowed to make API calls with this key.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedReferrers => list(String.t()) | nil
        }

  field(:allowedReferrers, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.APIKeys.V2.Model.V2BrowserKeyRestrictions do
  def decode(value, options) do
    GoogleApi.APIKeys.V2.Model.V2BrowserKeyRestrictions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.APIKeys.V2.Model.V2BrowserKeyRestrictions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
