defmodule HelloCachex.Cache.CacheOne do
  @nameofthecache :some_cache

  def get(key) do
    Cachex.get(@nameofthecache, key)
  end

  def put(key, data) do
    Cachex.put(@nameofthecache, key, data)
    Cachex.expire(@nameofthecache, key, :timer.seconds(10))
  end
end
