defmodule KitchenCalculator do
  def get_volume({_, qnt} = _volume_pair) do
     qnt
  end

  def to_milliliter({:cup, qnt} = _volume_pair) do
   {:milliliter, qnt * 240}
  end

  def to_milliliter({:fluid_ounce, qnt} = _volume_pair) do
    {:milliliter, qnt * 30}
  end

  def to_milliliter({:teaspoon, qnt} = _volume_pair) do
   {:milliliter, qnt * 5}
  end

  def to_milliliter({:tablespoon, qnt} = _volume_pair) do
    {:milliliter, qnt * 15}
  end

  def to_milliliter({:milliliter, qnt} = _volume_pair) do
    {:milliliter, qnt}
  end
  def from_milliliter({:milliliter, qnt} = _volume_pair, :cup = _unit) do
    {:cup, qnt /240}
  end

  def from_milliliter({:milliliter, qnt} = _volume_pair, :fluid_ounce = _unit) do
    {:fluid_ounce, qnt /30}
  end
  def from_milliliter({:milliliter, qnt} = _volume_pair, :teaspoon = _unit) do
    {:teaspoon, qnt /5}
  end
  def from_milliliter({:milliliter, qnt} = _volume_pair, :tablespoon = _unit) do
    {:tablespoon, qnt /15}
  end
  def from_milliliter({:milliliter, qnt} = _volume_pair, :milliliter = _unit) do
    {:milliliter, qnt}
  end

  def convert({from, qnt} = _volume_pair, to = _unit) do
    if from == :milliliter do
     from_milliliter({from, qnt}, to)
    else
      
      from_milliliter(to_milliliter({from, qnt}), to)
    end
  end
end
