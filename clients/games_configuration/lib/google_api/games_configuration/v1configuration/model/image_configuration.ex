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

defmodule GoogleApi.GamesConfiguration.V1configuration.Model.ImageConfiguration do
  @moduledoc """
  An image configuration resource.

  ## Attributes

  *   `imageType` (*type:* `String.t`, *default:* `nil`) - The image type for the image.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfiguration#imageConfiguration`.
  *   `resourceId` (*type:* `String.t`, *default:* `nil`) - The resource ID of resource which the image belongs to.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The url for this image.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :imageType => String.t() | nil,
          :kind => String.t() | nil,
          :resourceId => String.t() | nil,
          :url => String.t() | nil
        }

  field(:imageType)
  field(:kind)
  field(:resourceId)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.GamesConfiguration.V1configuration.Model.ImageConfiguration do
  def decode(value, options) do
    GoogleApi.GamesConfiguration.V1configuration.Model.ImageConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GamesConfiguration.V1configuration.Model.ImageConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
