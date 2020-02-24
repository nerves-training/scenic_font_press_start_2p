defmodule ScenicFontPressStart2p do
  @font_hash "eLcVQnSbL2kg9g_ix0_oVzgoTcuc0mp_9qZCxU04Rws"
  @font_metrics_hash  :code.priv_dir(:scenic_font_press_start_2p)
    |> Path.join("PressStart2P.ttf.metrics")
    |> Scenic.Cache.Support.Hash.file!(:sha)

  @moduledoc """
  Press Start 2P font loader
  """

  @doc """
  Manually load the font

  If you want Scenic to unload the font when a process dies, pass that process's pid.
  """
  @spec load(:global | pid()) :: :ok
  def load(scope \\ :global) do
    {:ok, _hash} =
      Scenic.Cache.Static.FontMetrics.load(font_metrics(), @font_metrics_hash, scope: scope)

    {:ok, _hash} = Scenic.Cache.Static.Font.load(font_folder(), @font_hash, scope: scope)
    :ok
  end

  def hash() do
    @font_metrics_hash
  end

  def font_folder() do
    :code.priv_dir(:scenic_font_press_start_2p) |> to_string()
  end

  def font_metrics() do
    :code.priv_dir(:scenic_font_press_start_2p) |> Path.join("PressStart2P.ttf.metrics")
  end
end
