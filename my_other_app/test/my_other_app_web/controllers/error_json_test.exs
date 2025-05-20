defmodule MyOtherAppWeb.ErrorJSONTest do
  use MyOtherAppWeb.ConnCase, async: true

  test "renders 404" do
    assert MyOtherAppWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert MyOtherAppWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
