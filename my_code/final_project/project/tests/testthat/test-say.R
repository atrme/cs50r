describe("say()", {
  it("can say hello with no parameter", {
    expect_match(say(), "hello!")
  })
  it("can say phrase inputed", {
    expect_match(say("I LOVE Natsu chan!"), "I LOVE Natsu chan!")
    expect_match(say("先輩，好き"), "先輩，好き")
  })
  it("can say with a sensei emoji", {
    sensei <- "ᕕ(◠ڼ◠)ᕗ"
    expect_match(say(), sensei, fixed = TRUE)
    expect_match(say("Ba"), sensei, fixed = TRUE)
  })
})