(*
 * Copyright (c) 2013 Thomas Gazagnaire <thomas@gazagnaire.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *)

(** A lightweight and colourful test framework, based on OUnit. *)

type speed_level = [`Quick | `Slow]
(** Speed level for a test. *)

type test_case = string * speed_level * (unit -> unit)
(** A test case is a documentation string, a speed level as well as an
    anyonymous function. *)

type test = string * test_case list
(** A test has a name and contains a list of test cases *)

val run: string -> test list -> unit
(** Run a test suite. The first argument is the name of the tested
    lib. *)

(** {2 Display} *)

val line: out_channel -> ?color:[`Blue|`Yellow] -> char -> unit
(** Draw a line on the given channel *)
