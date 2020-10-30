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

defmodule GoogleApi.Admin.Directory_v1.Model.DirectoryChromeosdevicesIssueCommandRequest do
  @moduledoc """
  A request for issuing a command.

  ## Attributes

  *   `commandType` (*type:* `String.t`, *default:* `nil`) - The type of command.
  *   `payload` (*type:* `String.t`, *default:* `nil`) - The payload for the command, provide it only if command supports it. The following commands support adding payload: - SET_VOLUME: Payload is a stringified JSON object in the form: { "volume": 50 }. The volume has to be an integer in the range [0,100].
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commandType => String.t(),
          :payload => String.t()
        }

  field(:commandType)
  field(:payload)
end

defimpl Poison.Decoder,
  for: GoogleApi.Admin.Directory_v1.Model.DirectoryChromeosdevicesIssueCommandRequest do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.DirectoryChromeosdevicesIssueCommandRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Admin.Directory_v1.Model.DirectoryChromeosdevicesIssueCommandRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end