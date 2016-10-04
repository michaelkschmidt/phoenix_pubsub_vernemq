defmodule Phoenix.PubSub.VerneMQ.Message do
  def encode_topic(topic) do
    topic
    |> String.split(":")
    # |> Enum.join("/")
    # |> :erlang.binary_to_list()
  end

  def decode_topic(topic) do
    topic
    |> Enum.join(":")
  end

  def encode_msg(msg) do
    :erlang.term_to_binary(msg)
  end

  def decode_msg(msg) do
    :erlang.binary_to_term(msg)
  end
end