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

defmodule GoogleApi.Logging.V2.Model.LogSplit do
  @moduledoc """
  Additional information used to correlate multiple log entries. Used when a single LogEntry would exceed the Google Cloud Logging size limit and is split across multiple log entries.

  ## Attributes

  *   `index` (*type:* `integer()`, *default:* `nil`) - The index of this LogEntry in the sequence of split log entries. Log entries are given |index| values 0, 1, ..., n-1 for a sequence of n log entries.
  *   `totalSplits` (*type:* `integer()`, *default:* `nil`) - The total number of log entries that the original LogEntry was split into.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - A globally unique identifier for all log entries in a sequence of split log entries. All log entries with the same |LogSplit.uid| are assumed to be part of the same sequence of split log entries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :index => integer() | nil,
          :totalSplits => integer() | nil,
          :uid => String.t() | nil
        }

  field(:index)
  field(:totalSplits)
  field(:uid)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.LogSplit do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.LogSplit.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.LogSplit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end