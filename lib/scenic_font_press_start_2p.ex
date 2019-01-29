defmodule ScenicFontPressStart2p do

  def load() do
    Application.ensure_all_started(:scenic)
    Scenic.Cache.File.load(path(), hash())
    Scenic.Cache.File.read(path(), hash())
    :ok
  end

  def path() do
    :code.priv_dir(:scenic_font_press_start_2p)
    |> to_string()
    |> Path.join("PressStart2P.ttf")
  end

  def hash() do
    {:ok, hash} = Scenic.Cache.Hash.file(path(), :sha)
    hash
  end
end