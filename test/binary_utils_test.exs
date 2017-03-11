defmodule BinaryUtilsTest do
  use ExUnit.Case
  doctest BinaryUtils

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "binary_to_decimal - 11" do
    assert BinaryUtils.binary_to_decimal("1011") == 11
  end
  test "binary_to_decimal - 9" do
    assert BinaryUtils.binary_to_decimal("1001") == 9
  end
  test "binary_to_decimal - 45" do
    assert BinaryUtils.binary_to_decimal("101101") == 45
  end
  test "binary_to_decimal - 11882709" do
    assert BinaryUtils.binary_to_decimal("0101101010101000011010101") == 11882709
  end
end
