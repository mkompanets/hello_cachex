defmodule HelloCachex.Cache.CacheTwo do
  @nameofthecache :some_other_cache

  def get(key) do
    Cachex.get(@nameofthecache, key)
  end

  def put(key, data) do
    Cachex.put(@nameofthecache, key, data)
    Cachex.expire(@nameofthecache, key, :timer.seconds(20))
  end
end
