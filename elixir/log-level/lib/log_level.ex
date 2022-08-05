defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 && legacy? == false -> :trace
      level == 1   -> :debug
      level == 2  -> :info
      level == 3  -> :warning
      level == 4  -> :error
      level == 5 && legacy? == false -> :fatal
      true -> :unknown
    end

  end

  def alert_recipient(level, legacy?) do
    res = to_label(level, legacy?)
    cond do
      res == :error || res == :fatal -> :ops
      res == :unknown && legacy?-> :dev1
      res == :unknown && legacy? == false -> :dev2
      true -> false
    end
  end
end
