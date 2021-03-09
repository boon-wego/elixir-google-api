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

defmodule GoogleApi.CloudErrorReporting.V1beta1.Model.ErrorGroup do
  @moduledoc """
  Description of a group of similar error events.

  ## Attributes

  *   `groupId` (*type:* `String.t`, *default:* `nil`) - Group IDs are unique for a given project. If the same kind of error occurs in different service contexts, it will receive the same group ID.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The group resource name. Example: projects/my-project-123/groups/CNSgkpnppqKCUw
  *   `resolutionStatus` (*type:* `String.t`, *default:* `nil`) - Error group's resolution status. An unspecified resolution status will be interpreted as OPEN
  *   `trackingIssues` (*type:* `list(GoogleApi.CloudErrorReporting.V1beta1.Model.TrackingIssue.t)`, *default:* `nil`) - Associated tracking issues.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :groupId => String.t() | nil,
          :name => String.t() | nil,
          :resolutionStatus => String.t() | nil,
          :trackingIssues =>
            list(GoogleApi.CloudErrorReporting.V1beta1.Model.TrackingIssue.t()) | nil
        }

  field(:groupId)
  field(:name)
  field(:resolutionStatus)

  field(:trackingIssues,
    as: GoogleApi.CloudErrorReporting.V1beta1.Model.TrackingIssue,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.CloudErrorReporting.V1beta1.Model.ErrorGroup do
  def decode(value, options) do
    GoogleApi.CloudErrorReporting.V1beta1.Model.ErrorGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudErrorReporting.V1beta1.Model.ErrorGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
