defmodule Membrane.FLAC.StreamMetadata do
  @moduledoc """
  Module defining metadata struct for FLAC buffers with stream metadata.

  Based on contents of [stream before audio frames](https://xiph.org/flac/format.html#frame_header)
  """

  @type t() :: %__MODULE__{
          type:
            :marker
            | :streaminfo
            | :padding
            | :application
            | :seektable
            | :vorbis_comment
            | :cuesheet
            | :picture
        }

  @enforce_keys [:type]

  defstruct @enforce_keys
end
