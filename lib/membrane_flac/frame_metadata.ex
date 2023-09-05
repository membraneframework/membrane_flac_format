defmodule Membrane.FLAC.FrameMetadata do
  @moduledoc """
  Module defining metadata struct for FLAC buffers with audio frames.

  Based on contents of [frame header](https://xiph.org/flac/format.html#frame_header)
  """

  @type t() :: %__MODULE__{
          channels: 1..8,
          channel_mode: :independent | :left_side | :right_side | :mid_side,
          sample_rate: pos_integer,
          sample_size: 4 | 8 | 12 | 16 | 20 | 24 | 32,
          samples: pos_integer,
          starting_sample_number: non_neg_integer()
        }

  @enforce_keys [
    :channels,
    :channel_mode,
    :sample_rate,
    :sample_size,
    :samples,
    :starting_sample_number
  ]

  defstruct @enforce_keys
end
