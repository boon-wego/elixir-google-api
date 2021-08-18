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

defmodule GoogleApi.OSLogin.V1alpha.Model.SecurityKey do
  @moduledoc """
  The credential information for a Google registered security key.

  ## Attributes

  *   `privateKey` (*type:* `String.t`, *default:* `nil`) - Hardware-backed private key text in SSH format.
  *   `publicKey` (*type:* `String.t`, *default:* `nil`) - Public key text in SSH format, defined by [RFC4253]("https://www.ietf.org/rfc/rfc4253.txt") section 6.6.
  *   `universalTwoFactor` (*type:* `GoogleApi.OSLogin.V1alpha.Model.UniversalTwoFactor.t`, *default:* `nil`) - The U2F protocol type.
  *   `webAuthn` (*type:* `GoogleApi.OSLogin.V1alpha.Model.WebAuthn.t`, *default:* `nil`) - The Web Authentication protocol type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :privateKey => String.t() | nil,
          :publicKey => String.t() | nil,
          :universalTwoFactor => GoogleApi.OSLogin.V1alpha.Model.UniversalTwoFactor.t() | nil,
          :webAuthn => GoogleApi.OSLogin.V1alpha.Model.WebAuthn.t() | nil
        }

  field(:privateKey)
  field(:publicKey)
  field(:universalTwoFactor, as: GoogleApi.OSLogin.V1alpha.Model.UniversalTwoFactor)
  field(:webAuthn, as: GoogleApi.OSLogin.V1alpha.Model.WebAuthn)
end

defimpl Poison.Decoder, for: GoogleApi.OSLogin.V1alpha.Model.SecurityKey do
  def decode(value, options) do
    GoogleApi.OSLogin.V1alpha.Model.SecurityKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSLogin.V1alpha.Model.SecurityKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end