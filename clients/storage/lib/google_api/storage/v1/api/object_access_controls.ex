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

defmodule GoogleApi.Storage.V1.Api.ObjectAccessControls do
  @moduledoc """
  API calls for all endpoints tagged `ObjectAccessControls`.
  """

  alias GoogleApi.Storage.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Permanently deletes the ACL entry for the specified entity on the specified object.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `bucket` (*type:* `String.t`) - Name of a bucket.
  *   `object` (*type:* `String.t`) - Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  *   `entity` (*type:* `String.t`) - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Upload protocol for media (e.g. "media", "multipart", "resumable").
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:generation` (*type:* `String.t`) - If present, selects a specific revision of this object (as opposed to the latest version, the default).
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request. Required for Requester Pays buckets.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_object_access_controls_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:ok, Tesla.Env.t()} | {:ok, list()} | {:error, any()}
  def storage_object_access_controls_delete(
        connection,
        bucket,
        object,
        entity,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :userIp => :query,
      :generation => :query,
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/storage/v1/b/{bucket}/o/{object}/acl/{entity}", %{
        "bucket" => URI.encode(bucket, &URI.char_unreserved?/1),
        "object" => URI.encode(object, &URI.char_unreserved?/1),
        "entity" => URI.encode(entity, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Returns the ACL entry for the specified entity on the specified object.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `bucket` (*type:* `String.t`) - Name of a bucket.
  *   `object` (*type:* `String.t`) - Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  *   `entity` (*type:* `String.t`) - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Upload protocol for media (e.g. "media", "multipart", "resumable").
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:generation` (*type:* `String.t`) - If present, selects a specific revision of this object (as opposed to the latest version, the default).
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request. Required for Requester Pays buckets.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.ObjectAccessControl{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_object_access_controls_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Storage.V1.Model.ObjectAccessControl.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def storage_object_access_controls_get(
        connection,
        bucket,
        object,
        entity,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :userIp => :query,
      :generation => :query,
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/storage/v1/b/{bucket}/o/{object}/acl/{entity}", %{
        "bucket" => URI.encode(bucket, &URI.char_unreserved?/1),
        "object" => URI.encode(object, &URI.char_unreserved?/1),
        "entity" => URI.encode(entity, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.ObjectAccessControl{}])
  end

  @doc """
  Creates a new ACL entry on the specified object.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `bucket` (*type:* `String.t`) - Name of a bucket.
  *   `object` (*type:* `String.t`) - Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Upload protocol for media (e.g. "media", "multipart", "resumable").
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:generation` (*type:* `String.t`) - If present, selects a specific revision of this object (as opposed to the latest version, the default).
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request. Required for Requester Pays buckets.
      *   `:body` (*type:* `GoogleApi.Storage.V1.Model.ObjectAccessControl.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.ObjectAccessControl{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_object_access_controls_insert(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Storage.V1.Model.ObjectAccessControl.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def storage_object_access_controls_insert(
        connection,
        bucket,
        object,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :userIp => :query,
      :generation => :query,
      :userProject => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/storage/v1/b/{bucket}/o/{object}/acl", %{
        "bucket" => URI.encode(bucket, &URI.char_unreserved?/1),
        "object" => URI.encode(object, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.ObjectAccessControl{}])
  end

  @doc """
  Retrieves ACL entries on the specified object.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `bucket` (*type:* `String.t`) - Name of a bucket.
  *   `object` (*type:* `String.t`) - Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Upload protocol for media (e.g. "media", "multipart", "resumable").
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:generation` (*type:* `String.t`) - If present, selects a specific revision of this object (as opposed to the latest version, the default).
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request. Required for Requester Pays buckets.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.ObjectAccessControls{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_object_access_controls_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Storage.V1.Model.ObjectAccessControls.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def storage_object_access_controls_list(
        connection,
        bucket,
        object,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :userIp => :query,
      :generation => :query,
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/storage/v1/b/{bucket}/o/{object}/acl", %{
        "bucket" => URI.encode(bucket, &URI.char_unreserved?/1),
        "object" => URI.encode(object, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.ObjectAccessControls{}])
  end

  @doc """
  Patches an ACL entry on the specified object.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `bucket` (*type:* `String.t`) - Name of a bucket.
  *   `object` (*type:* `String.t`) - Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  *   `entity` (*type:* `String.t`) - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Upload protocol for media (e.g. "media", "multipart", "resumable").
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:generation` (*type:* `String.t`) - If present, selects a specific revision of this object (as opposed to the latest version, the default).
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request. Required for Requester Pays buckets.
      *   `:body` (*type:* `GoogleApi.Storage.V1.Model.ObjectAccessControl.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.ObjectAccessControl{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_object_access_controls_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Storage.V1.Model.ObjectAccessControl.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def storage_object_access_controls_patch(
        connection,
        bucket,
        object,
        entity,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :userIp => :query,
      :generation => :query,
      :userProject => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/storage/v1/b/{bucket}/o/{object}/acl/{entity}", %{
        "bucket" => URI.encode(bucket, &URI.char_unreserved?/1),
        "object" => URI.encode(object, &URI.char_unreserved?/1),
        "entity" => URI.encode(entity, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.ObjectAccessControl{}])
  end

  @doc """
  Updates an ACL entry on the specified object.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `bucket` (*type:* `String.t`) - Name of a bucket.
  *   `object` (*type:* `String.t`) - Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  *   `entity` (*type:* `String.t`) - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Upload protocol for media (e.g. "media", "multipart", "resumable").
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:generation` (*type:* `String.t`) - If present, selects a specific revision of this object (as opposed to the latest version, the default).
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request. Required for Requester Pays buckets.
      *   `:body` (*type:* `GoogleApi.Storage.V1.Model.ObjectAccessControl.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.ObjectAccessControl{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_object_access_controls_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Storage.V1.Model.ObjectAccessControl.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def storage_object_access_controls_update(
        connection,
        bucket,
        object,
        entity,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :userIp => :query,
      :generation => :query,
      :userProject => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/storage/v1/b/{bucket}/o/{object}/acl/{entity}", %{
        "bucket" => URI.encode(bucket, &URI.char_unreserved?/1),
        "object" => URI.encode(object, &URI.char_unreserved?/1),
        "entity" => URI.encode(entity, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.ObjectAccessControl{}])
  end
end
