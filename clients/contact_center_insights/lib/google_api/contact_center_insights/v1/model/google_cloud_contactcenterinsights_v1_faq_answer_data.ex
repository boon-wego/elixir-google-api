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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1FaqAnswerData do
  @moduledoc """
  Agent Assist frequently-asked-question answer data.

  ## Attributes

  *   `answer` (*type:* `String.t`, *default:* `nil`) - The piece of text from the `source` knowledge base document.
  *   `confidenceScore` (*type:* `number()`, *default:* `nil`) - The system's confidence score that this answer is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Map that contains metadata about the FAQ answer and the document that it originates from.
  *   `queryRecord` (*type:* `String.t`, *default:* `nil`) - Name of the query record. Format: projects/{project}/locations/{location}/queryRecords/{query_record}.
  *   `question` (*type:* `String.t`, *default:* `nil`) - The corresponding FAQ question.
  *   `source` (*type:* `String.t`, *default:* `nil`) - The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeBases/{knowledge_base}/documents/{document}.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answer => String.t() | nil,
          :confidenceScore => number() | nil,
          :metadata => map() | nil,
          :queryRecord => String.t() | nil,
          :question => String.t() | nil,
          :source => String.t() | nil
        }

  field(:answer)
  field(:confidenceScore)
  field(:metadata, type: :map)
  field(:queryRecord)
  field(:question)
  field(:source)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1FaqAnswerData do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1FaqAnswerData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1FaqAnswerData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
