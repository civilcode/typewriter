defmodule TypeWriterTest do
  use ExUnit.Case

  use TypeWriter

  describe "defining a single case union type" do
    deftype ProductCode1 :: String.t()

    test "using inline syntax generates the struct" do
      alias TypeWriterTest.ProductCode1

      assert ProductCode1.__struct__() == %ProductCode1{value: nil}
    end

    defmodule ProductCode2 do
      use TypeWriter

      deftype String.t()
    end

    test "using module syntax generates the struct" do
      alias TypeWriterTest.ProductCode2

      assert ProductCode2.__struct__() == %ProductCode2{value: nil}
    end
  end
end
