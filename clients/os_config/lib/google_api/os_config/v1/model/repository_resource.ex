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

defmodule GoogleApi.OSConfig.V1.Model.RepositoryResource do
  @moduledoc """
  A resource that manages a package repository.

  ## Attributes

  *   `apt` (*type:* `GoogleApi.OSConfig.V1.Model.RepositoryResourceAptRepository.t`, *default:* `nil`) - An Apt Repository.
  *   `goo` (*type:* `GoogleApi.OSConfig.V1.Model.RepositoryResourceGooRepository.t`, *default:* `nil`) - A Goo Repository.
  *   `yum` (*type:* `GoogleApi.OSConfig.V1.Model.RepositoryResourceYumRepository.t`, *default:* `nil`) - A Yum Repository.
  *   `zypper` (*type:* `GoogleApi.OSConfig.V1.Model.RepositoryResourceZypperRepository.t`, *default:* `nil`) - A Zypper Repository.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apt => GoogleApi.OSConfig.V1.Model.RepositoryResourceAptRepository.t(),
          :goo => GoogleApi.OSConfig.V1.Model.RepositoryResourceGooRepository.t(),
          :yum => GoogleApi.OSConfig.V1.Model.RepositoryResourceYumRepository.t(),
          :zypper => GoogleApi.OSConfig.V1.Model.RepositoryResourceZypperRepository.t()
        }

  field(:apt, as: GoogleApi.OSConfig.V1.Model.RepositoryResourceAptRepository)
  field(:goo, as: GoogleApi.OSConfig.V1.Model.RepositoryResourceGooRepository)
  field(:yum, as: GoogleApi.OSConfig.V1.Model.RepositoryResourceYumRepository)
  field(:zypper, as: GoogleApi.OSConfig.V1.Model.RepositoryResourceZypperRepository)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.RepositoryResource do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.RepositoryResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.RepositoryResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end