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

defmodule GoogleApi.Books.V1.Api.Bookshelves do
  @moduledoc """
  API calls for all endpoints tagged `Bookshelves`.
  """

  alias GoogleApi.Books.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves metadata for a specific bookshelf for the specified user.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `user_id` (*type:* `String.t`) - ID of user for whom to retrieve bookshelves.
  *   `shelf` (*type:* `String.t`) - ID of bookshelf to retrieve.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Bookshelf{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_bookshelves_get(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Bookshelf.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def books_bookshelves_get(connection, user_id, shelf, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/books/v1/users/{userId}/bookshelves/{shelf}", %{
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
        "shelf" => URI.encode(shelf, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Bookshelf{}])
  end

  @doc """
  Retrieves a list of public bookshelves for the specified user.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `user_id` (*type:* `String.t`) - ID of user for whom to retrieve bookshelves.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Bookshelves{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_bookshelves_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Bookshelves.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def books_bookshelves_list(connection, user_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/books/v1/users/{userId}/bookshelves", %{
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Bookshelves{}])
  end

  @doc """
  Retrieves volumes in a specific bookshelf for the specified user.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `user_id` (*type:* `String.t`) - ID of user for whom to retrieve bookshelf volumes.
  *   `shelf` (*type:* `String.t`) - ID of bookshelf to retrieve volumes.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return
      *   `:showPreorders` (*type:* `boolean()`) - Set to true to show pre-ordered books. Defaults to false.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
      *   `:startIndex` (*type:* `integer()`) - Index of the first element to return (starts at 0)
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Volumes{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_bookshelves_volumes_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Books.V1.Model.Volumes.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def books_bookshelves_volumes_list(
        connection,
        user_id,
        shelf,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :maxResults => :query,
      :showPreorders => :query,
      :source => :query,
      :startIndex => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/books/v1/users/{userId}/bookshelves/{shelf}/volumes", %{
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
        "shelf" => URI.encode(shelf, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volumes{}])
  end
end
