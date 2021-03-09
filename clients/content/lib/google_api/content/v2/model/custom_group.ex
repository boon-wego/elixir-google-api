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

defmodule GoogleApi.Content.V2.Model.CustomGroup do
  @moduledoc """


  ## Attributes

  *   `attributes` (*type:* `list(GoogleApi.Content.V2.Model.CustomAttribute.t)`, *default:* `nil`) - The sub-attributes.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the group. Underscores will be replaced by spaces upon insertion.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes => list(GoogleApi.Content.V2.Model.CustomAttribute.t()) | nil,
          :name => String.t() | nil
        }

  field(:attributes, as: GoogleApi.Content.V2.Model.CustomAttribute, type: :list)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.CustomGroup do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.CustomGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.CustomGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
