describe("say_electrify()", {
  it("can electrify", {
    expect_match(say_electrify(), "对着")
    expect_match(say_electrify(), "冲了")
  })
  it("can electrify with a sensei emoji", {
    expect_match(say_electrify(), "ᕕ(◠ڼ◠)ᕗ", fixed = TRUE)
  })
})