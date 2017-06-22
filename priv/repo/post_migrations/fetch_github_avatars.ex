import ElixirStatus.Repo
import ElixirStatus.User

ElixirStatus.Repo.all(ElixirStatus.User)
|> Enum.map(fn u ->
   {:ok, result} = HTTPoison.get("https://api.github.com/users/#{u.user_name}", [], [ ssl: [{:versions, [:'tlsv1.2']}] ])
   info = Poison.decode!(result.body)
   avatar_url = info["avatar_url"]
   u
   |> ElixirStatus.User.changeset(%{avatar_url: avatar_url})
   |> ElixirStatus.Repo.update!
end)

