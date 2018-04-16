defmodule MyApp do
  @moduledoc """
  Documentation for MyApp.
  """
  
  use Application
  use Supervisor

  def start(_type, _args) do
    Supervisor.start_link([{MyApp.Router, []}, {MyApp.ApiHandler, []}], strategy: :one_for_all)
  end
  

  @doc """
  Hello world.

  ## Examples

      iex> MyApp.hello
      :world

  """
  def hello do
    :world
  end

@doc """
  Say hello
  ## Parameters
  - name: String of a person

  ## Examples
      iex> Myapp.say("Ari")
      "Hello Ari"
  """
  @spec say(String.t) :: String.t
  def say(name) do
    "Hello #{name}"
  end
end