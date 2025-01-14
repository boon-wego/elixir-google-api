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

defmodule GoogleApi.Docs.V1.Model.ParagraphStyleSuggestionState do
  @moduledoc """
  A mask that indicates which of the fields on the base ParagraphStyle have been changed in this suggestion. For any field set to true, there is a new suggested value.

  ## Attributes

  *   `alignmentSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to alignment.
  *   `avoidWidowAndOrphanSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to avoid_widow_and_orphan.
  *   `borderBetweenSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to border_between.
  *   `borderBottomSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to border_bottom.
  *   `borderLeftSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to border_left.
  *   `borderRightSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to border_right.
  *   `borderTopSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to border_top.
  *   `directionSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to direction.
  *   `headingIdSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to heading_id.
  *   `indentEndSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to indent_end.
  *   `indentFirstLineSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to indent_first_line.
  *   `indentStartSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to indent_start.
  *   `keepLinesTogetherSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to keep_lines_together.
  *   `keepWithNextSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to keep_with_next.
  *   `lineSpacingSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to line_spacing.
  *   `namedStyleTypeSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to named_style_type.
  *   `pageBreakBeforeSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to page_break_before.
  *   `shadingSuggestionState` (*type:* `GoogleApi.Docs.V1.Model.ShadingSuggestionState.t`, *default:* `nil`) - A mask that indicates which of the fields in shading have been changed in this suggestion.
  *   `spaceAboveSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to space_above.
  *   `spaceBelowSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to space_below.
  *   `spacingModeSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to spacing_mode.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alignmentSuggested => boolean() | nil,
          :avoidWidowAndOrphanSuggested => boolean() | nil,
          :borderBetweenSuggested => boolean() | nil,
          :borderBottomSuggested => boolean() | nil,
          :borderLeftSuggested => boolean() | nil,
          :borderRightSuggested => boolean() | nil,
          :borderTopSuggested => boolean() | nil,
          :directionSuggested => boolean() | nil,
          :headingIdSuggested => boolean() | nil,
          :indentEndSuggested => boolean() | nil,
          :indentFirstLineSuggested => boolean() | nil,
          :indentStartSuggested => boolean() | nil,
          :keepLinesTogetherSuggested => boolean() | nil,
          :keepWithNextSuggested => boolean() | nil,
          :lineSpacingSuggested => boolean() | nil,
          :namedStyleTypeSuggested => boolean() | nil,
          :pageBreakBeforeSuggested => boolean() | nil,
          :shadingSuggestionState => GoogleApi.Docs.V1.Model.ShadingSuggestionState.t() | nil,
          :spaceAboveSuggested => boolean() | nil,
          :spaceBelowSuggested => boolean() | nil,
          :spacingModeSuggested => boolean() | nil
        }

  field(:alignmentSuggested)
  field(:avoidWidowAndOrphanSuggested)
  field(:borderBetweenSuggested)
  field(:borderBottomSuggested)
  field(:borderLeftSuggested)
  field(:borderRightSuggested)
  field(:borderTopSuggested)
  field(:directionSuggested)
  field(:headingIdSuggested)
  field(:indentEndSuggested)
  field(:indentFirstLineSuggested)
  field(:indentStartSuggested)
  field(:keepLinesTogetherSuggested)
  field(:keepWithNextSuggested)
  field(:lineSpacingSuggested)
  field(:namedStyleTypeSuggested)
  field(:pageBreakBeforeSuggested)
  field(:shadingSuggestionState, as: GoogleApi.Docs.V1.Model.ShadingSuggestionState)
  field(:spaceAboveSuggested)
  field(:spaceBelowSuggested)
  field(:spacingModeSuggested)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.ParagraphStyleSuggestionState do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.ParagraphStyleSuggestionState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.ParagraphStyleSuggestionState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
