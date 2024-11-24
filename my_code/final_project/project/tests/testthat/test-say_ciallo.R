describe("say_ciallo()", {
  it("can say ciallo", {
    expect_match(say_ciallo(), "Ciallo~")
  })
  it("can say ciallo with a sensei emoji", {
    expect_match(say_ciallo(), "(∠◠ڼ◠)⌒☆", fixed = TRUE)
  })
})