defmodule Membrane.Caps.Audio.FLAC do
  @moduledoc """
  Membrane Caps for audio encoded with [Free Lossless Audio Codec](https://xiph.org/flac/index.html)

  Provides Caps struct describing FLAC-encoded audio stream, currently supports only metadata from
  [`STREAMINFO` metadata block](https://xiph.org/flac/format.html#metadata_block_streaminfo)
  """

  @type t :: %__MODULE__{
          min_block_size: pos_integer(),
          max_block_size: pos_integer(),
          min_frame_size: non_neg_integer(),
          max_frame_size: non_neg_integer(),
          sample_rate: pos_integer(),
          channels: 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8,
          sample_size: 4 | 8 | 16 | 24 | 32,
          total_samples: pos_integer(),
          md5_signature: pos_integer()
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
