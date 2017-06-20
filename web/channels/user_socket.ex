defmodule HelloPhoenix.UserSocket do
  use Phoenix.Socket

  ## Transports
  transport :websocket, Phoenix.Transports.WebSocket,
    timeout: 45_000
end
