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

defmodule GoogleApi.CloudSearch.V1.Model.GoogleDocsMetadata do
  @moduledoc """
  The corpus specific metadata for office-type documents, from Google Docs and other sources. This message is passed to the scorer and beyond. Next tag: 7

  ## Attributes

  *   `aclInfo` (*type:* `GoogleApi.CloudSearch.V1.Model.AclInfo.t`, *default:* `nil`) - Contains number of users and groups which can access the document.
  *   `documentType` (*type:* `String.t`, *default:* `nil`) - The conceptual type (presentation, document, etc.) of this document.
  *   `fileExtension` (*type:* `String.t`, *default:* `nil`) - The file extension of the document. NOTE: As of October 2018 this field is not backfilled for old documents.
  *   `lastContentModifiedTimestamp` (*type:* `String.t`, *default:* `nil`) - The last time this document was modified, in seconds since epoch. Only counts content modifications.
  *   `resultInfo` (*type:* `GoogleApi.CloudSearch.V1.Model.GoogleDocsResultInfo.t`, *default:* `nil`) - Additional per-result information, akin to Gmail's SingleThreadResponse. Note: GWS no longer seems to use this field, but there's still one reference to it for Scribe, so we can't remove it.
  *   `typeInfo` (*type:* `GoogleApi.CloudSearch.V1.Model.TypeInfo.t`, *default:* `nil`) - Contains additional information about the document depending on its type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aclInfo => GoogleApi.CloudSearch.V1.Model.AclInfo.t() | nil,
          :documentType => String.t() | nil,
          :fileExtension => String.t() | nil,
          :lastContentModifiedTimestamp => String.t() | nil,
          :resultInfo => GoogleApi.CloudSearch.V1.Model.GoogleDocsResultInfo.t() | nil,
          :typeInfo => GoogleApi.CloudSearch.V1.Model.TypeInfo.t() | nil
        }

  field(:aclInfo, as: GoogleApi.CloudSearch.V1.Model.AclInfo)
  field(:documentType)
  field(:fileExtension)
  field(:lastContentModifiedTimestamp)
  field(:resultInfo, as: GoogleApi.CloudSearch.V1.Model.GoogleDocsResultInfo)
  field(:typeInfo, as: GoogleApi.CloudSearch.V1.Model.TypeInfo)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.GoogleDocsMetadata do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.GoogleDocsMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.GoogleDocsMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
