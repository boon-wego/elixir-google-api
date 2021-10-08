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

defmodule GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResource do
  @moduledoc """
  A resource that manages a package repository.

  ## Attributes

  *   `apt` (*type:* `GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResourceAptRepository.t`, *default:* `nil`) - An Apt Repository.
  *   `goo` (*type:* `GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResourceGooRepository.t`, *default:* `nil`) - A Goo Repository.
  *   `yum` (*type:* `GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResourceYumRepository.t`, *default:* `nil`) - A Yum Repository.
  *   `zypper` (*type:* `GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResourceZypperRepository.t`, *default:* `nil`) - A Zypper Repository.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apt =>
            GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResourceAptRepository.t() | nil,
          :goo =>
            GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResourceGooRepository.t() | nil,
          :yum =>
            GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResourceYumRepository.t() | nil,
          :zypper =>
            GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResourceZypperRepository.t()
            | nil
        }

  field(:apt, as: GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResourceAptRepository)
  field(:goo, as: GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResourceGooRepository)
  field(:yum, as: GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResourceYumRepository)

  field(:zypper,
    as: GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResourceZypperRepository
  )
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResource do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.OSPolicyResourceRepositoryResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end