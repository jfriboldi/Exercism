defmodule BirdCount do
  def today ([] = _list) do
    nil
  end
  def today([head | _tail] = _list) do
    head
  end

  def increment_day_count([] = _list) do
   [1]
  end

  def increment_day_count([head | tail] = _list) do
   [head + 1 | tail]
  end

  def has_day_without_birds?([] = _list) do
    false
  end

  def has_day_without_birds?([0 | _tail] = _list) do
    true
  end

  def has_day_without_birds?([_head | tail] = _list) do
    has_day_without_birds?(tail)
  end
  def total([]= _list) do
    0
  end
  def total([head | tail] = _list) do
    head + total(tail)
  end

  def busy_days([]= _list) do
    0
  end
  def busy_days([head | tail] = _list) do
    if head >= 5 do
      1 + busy_days(tail)
    else
      busy_days(tail)
    end
  end
end
