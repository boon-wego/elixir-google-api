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

defmodule GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1MetricValueSet do
  @moduledoc """
  Represents a set of metric values in the same metric. Each metric value in the set should have a unique combination of start time, end time, and label values.

  ## Attributes

  *   `metricName` (*type:* `String.t`, *default:* `nil`) - The metric name defined in the service configuration.
  *   `metricValues` (*type:* `list(GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1MetricValue.t)`, *default:* `nil`) - The values in this metric.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metricName => String.t(),
          :metricValues =>
            list(GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1MetricValue.t())
        }

  field(:metricName)

  field(:metricValues,
    as: GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1MetricValue,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1MetricValueSet do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1MetricValueSet.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1MetricValueSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end