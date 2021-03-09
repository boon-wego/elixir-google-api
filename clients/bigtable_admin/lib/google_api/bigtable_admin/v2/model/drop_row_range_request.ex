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

defmodule GoogleApi.BigtableAdmin.V2.Model.DropRowRangeRequest do
  @moduledoc """
  Request message for google.bigtable.admin.v2.BigtableTableAdmin.DropRowRange

  ## Attributes

  *   `deleteAllDataFromTable` (*type:* `boolean()`, *default:* `nil`) - Delete all rows in the table. Setting this to false is a no-op.
  *   `rowKeyPrefix` (*type:* `String.t`, *default:* `nil`) - Delete all rows that start with this row key prefix. Prefix cannot be zero length.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deleteAllDataFromTable => boolean() | nil,
          :rowKeyPrefix => String.t() | nil
        }

  field(:deleteAllDataFromTable)
  field(:rowKeyPrefix)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.DropRowRangeRequest do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.DropRowRangeRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.DropRowRangeRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
