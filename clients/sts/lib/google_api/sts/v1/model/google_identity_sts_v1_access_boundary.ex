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

defmodule GoogleApi.STS.V1.Model.GoogleIdentityStsV1AccessBoundary do
  @moduledoc """
  An access boundary defines the upper bound of what a principal may access. It includes a list of access boundary rules that each defines the resource that may be allowed as well as permissions that may be used on those resources.

  ## Attributes

  *   `accessBoundaryRules` (*type:* `list(GoogleApi.STS.V1.Model.GoogleIdentityStsV1AccessBoundaryRule.t)`, *default:* `nil`) - A list of access boundary rules which defines the upper bound of the permission a principal may carry. If multiple rules are specified, the effective access boundary is the union of all the access boundary rules attached. One access boundary can contain at most 10 rules.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessBoundaryRules =>
            list(GoogleApi.STS.V1.Model.GoogleIdentityStsV1AccessBoundaryRule.t()) | nil
        }

  field(:accessBoundaryRules,
    as: GoogleApi.STS.V1.Model.GoogleIdentityStsV1AccessBoundaryRule,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.STS.V1.Model.GoogleIdentityStsV1AccessBoundary do
  def decode(value, options) do
    GoogleApi.STS.V1.Model.GoogleIdentityStsV1AccessBoundary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.STS.V1.Model.GoogleIdentityStsV1AccessBoundary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end