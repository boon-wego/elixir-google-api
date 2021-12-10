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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1Form do
  @moduledoc """
  A form is a data model that groups related parameters that can be collected from the user. The process in which the agent prompts the user and collects parameter values from the user is called form filling. A form can be added to a page. When form filling is done, the filled parameters will be written to the session.

  ## Attributes

  *   `parameters` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1FormParameter.t)`, *default:* `nil`) - Parameters to collect from the user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parameters =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1FormParameter.t())
            | nil
        }

  field(:parameters,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1FormParameter,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1Form do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1Form.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1Form do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end