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

defmodule GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1TemporalAsset do
  @moduledoc """
  Wrapper over asset object that also captures the state change for the asset
  e.g. if it was a newly created asset vs updated or deleted asset.

  ## Attributes

  *   `asset` (*type:* `GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1Asset.t`, *default:* `nil`) - Asset data that includes attributes, properties and marks about the asset.
  *   `changeType` (*type:* `String.t`, *default:* `nil`) - Represents if the asset was created/updated/deleted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :asset => GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1Asset.t(),
          :changeType => String.t()
        }

  field(:asset, as: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1Asset)
  field(:changeType)
end

defimpl Poison.Decoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1TemporalAsset do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1TemporalAsset.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1TemporalAsset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
