defmodule ExAwabi do
  use Rustler, otp_app: :exawabi, crate: "awabi_nif"

  @spec tokenize(binary) :: [binary]
  def tokenize(_s), do: error()

  @spec tokenize_n_best(binary, integer) :: [[binary]]
  def tokenize_n_best(_s, _n), do: error()

  defp error(), do: :erlang.nif_error(:nif_not_loaded)
end
