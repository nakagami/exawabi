/*
*MIT License
*
*Copyright (c) 2020 Hajime Nakagami
*
*Permission is hereby granted, free of charge, to any person obtaining a copy
*of this software and associated documentation files (the "Software"), to deal
*in the Software without restriction, including without limitation the rights
*to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
*copies of the Software, and to permit persons to whom the Software is
*furnished to do so, subject to the following conditions:
*
*The above copyright notice and this permission notice shall be included in all
*copies or substantial portions of the Software.
*
*THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
*IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
*FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
*AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
*LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
*OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
*SOFTWARE.
*/
use awabi::tokenizer;


#[macro_use]
extern crate lazy_static;

lazy_static! {
  static ref TOK: tokenizer::Tokenizer = tokenizer::Tokenizer::new(None).unwrap();
}

#[rustler::nif]
pub fn tokenize(s: String) -> Vec<(String, String)> {
    TOK.tokenize(&s)
}

#[rustler::nif]
pub fn tokenize_n_best(s: String, n: u32) -> Vec<Vec<(String, String)>> {
    TOK.tokenize_n_best(&s, n)
}


rustler::init!("Elixir.ExAwabi", [tokenize, tokenize_n_best]);
