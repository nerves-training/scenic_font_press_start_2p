defmodule ScenicFontPressStart2p do

  {:ok, hash} =
    Application.app_dir(:scenic_font_press_start_2p, ["priv", "PressStart2P.ttf"])
    |> Scenic.Cache.Hash.file(:sha)

  @hash hash

  def load() do
    Scenic.Cache.File.load(path(), hash())
    Scenic.Cache.File.read(path(), hash())
    :ok
  end

  def path() do
    Application.app_dir(:scenic_font_press_start_2p, ["priv", "PressStart2P.ttf"])
  end

  def hash() do
    @hash
  end
end
