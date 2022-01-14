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

defmodule GoogleApi.OnDemandScanning.V1.Model.PackageData do
  @moduledoc """


  ## Attributes

  *   `cpeUri` (*type:* `String.t`, *default:* `nil`) - The cpe_uri in [cpe format] (https://cpe.mitre.org/specification/) in which the vulnerability may manifest. Examples include distro or storage location for vulnerable jar.
  *   `os` (*type:* `String.t`, *default:* `nil`) - The OS affected by a vulnerability This field is deprecated and the information is in cpe_uri
  *   `osVersion` (*type:* `String.t`, *default:* `nil`) - The version of the OS This field is deprecated and the information is in cpe_uri
  *   `package` (*type:* `String.t`, *default:* `nil`) - The package being analysed for vulnerabilities
  *   `packageType` (*type:* `String.t`, *default:* `nil`) - The type of package: os, maven, go, etc.
  *   `unused` (*type:* `String.t`, *default:* `nil`) - 
  *   `version` (*type:* `String.t`, *default:* `nil`) - The version of the package being analysed
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cpeUri => String.t() | nil,
          :os => String.t() | nil,
          :osVersion => String.t() | nil,
          :package => String.t() | nil,
          :packageType => String.t() | nil,
          :unused => String.t() | nil,
          :version => String.t() | nil
        }

  field(:cpeUri)
  field(:os)
  field(:osVersion)
  field(:package)
  field(:packageType)
  field(:unused)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.OnDemandScanning.V1.Model.PackageData do
  def decode(value, options) do
    GoogleApi.OnDemandScanning.V1.Model.PackageData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OnDemandScanning.V1.Model.PackageData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end