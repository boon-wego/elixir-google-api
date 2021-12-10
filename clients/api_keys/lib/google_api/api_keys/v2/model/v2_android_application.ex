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

defmodule GoogleApi.APIKeys.V2.Model.V2AndroidApplication do
  @moduledoc """
  Identifier of an Android application for key use.

  ## Attributes

  *   `packageName` (*type:* `String.t`, *default:* `nil`) - The package name of the application.
  *   `sha1Fingerprint` (*type:* `String.t`, *default:* `nil`) - The SHA1 fingerprint of the application. For example, both sha1 formats are acceptable : DA:39:A3:EE:5E:6B:4B:0D:32:55:BF:EF:95:60:18:90:AF:D8:07:09 or DA39A3EE5E6B4B0D3255BFEF95601890AFD80709. Output format is the latter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :packageName => String.t() | nil,
          :sha1Fingerprint => String.t() | nil
        }

  field(:packageName)
  field(:sha1Fingerprint)
end

defimpl Poison.Decoder, for: GoogleApi.APIKeys.V2.Model.V2AndroidApplication do
  def decode(value, options) do
    GoogleApi.APIKeys.V2.Model.V2AndroidApplication.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.APIKeys.V2.Model.V2AndroidApplication do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
