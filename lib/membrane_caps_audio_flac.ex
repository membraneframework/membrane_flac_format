defmodule Membrane.Caps.Audio.FLAC do
  @moduledoc """
  Membrane Caps for audio encoded with [Free Lossless Audio Codec](https://xiph.org/flac/index.html)

  Provides Caps struct describing FLAC-encoded audio stream, currently supports only metadata from
  [`STREAMINFO` metadata block](https://xiph.org/flac/format.html#metadata_block_streaminfo)
  """

  @type t :: %__MODULE__{
          min_block_size: pos_integer() | nil,
          max_block_size: pos_integer() | nil,
          min_frame_size: pos_integer() | nil,
          max_frame_size: pos_integer() | nil,
          sample_rate: pos_integer(),
          channels: 1..8,
          sample_size: 4 | 8 | 12 | 16 | 24 | 32,
          total_samples: pos_integer() | nil,
          md5_signature: binary() | nil
        }

  @enforce_keys [
    :sample_rate,
    :channels,
    :sample_size
  ]

  defstruct [
    :min_block_size,
    :max_block_size,
    :min_frame_size,
    :max_frame_size,
    :total_samples,
    :md5_signature
    | @enforce_keys
  ]
end
