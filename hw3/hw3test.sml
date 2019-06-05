(* Homework3 Simple Test*)
(* These are basic test cases. Passing these tests does not guarantee that your code will pass the actual homework grader *)
(* To run the test, add a new line to the top of this file: use "homeworkname.sml"; *)
(* All the tests should evaluate to true. For example, the REPL should say: val test1 = true : bool *)

use "hw3.sml";
val test1a = only_capitals ["A","B","C"] = ["A","B","C"]
val test1b = only_capitals ["A","B","C", "d"] = ["A","B","C"]
val test1c = only_capitals ["A","bxxcxcvxcv","C", "d"] = ["A","C"]
val test1d = only_capitals ["a","bxxcxcvxcv","c", "d"] = []
val test1e = only_capitals [] = []

val test2a = longest_string1 ["A","bc","C"] = "bc"
val test2b = longest_string1 [] = ""
val test2c = longest_string1 ["asdasdasd"] = "asdasdasd"
val test2d = longest_string1 ["A","bc","DC"] = "bc"

val test3a = longest_string2 ["A","bc","C"] = "bc"
val test3b = longest_string2 [] = ""
val test3c = longest_string2 ["asdasdasd"] = "asdasdasd"
val test3d = longest_string2 ["A","bc","DC"] = "DC"


val test4a = longest_string3 ["A","bc","C"] = "bc"
val test4b = longest_string3 [] = ""
val test4c = longest_string3 ["asdasdasd"] = "asdasdasd"
val test4d = longest_string3 ["A","bc","DC"] = "bc"


val test4aa = longest_string4 ["A","bc","C"] = "bc"
val test4bb = longest_string4 [] = ""
val test4cc = longest_string4 ["asdasdasd"] = "asdasdasd"
val test4dd = longest_string4 ["A","bc","DC"] = "DC"

(*  *)
(*  *)
val test4aaa = longest_string3 ["A","bc","C"] = "bc"
(*  *)
(* val test4bbb = longest_string4 ["A","B","C"] = "C" *)
(*  *)
val test5a = longest_capitalized ["A","bc","C"] = "A"
val test5b = longest_capitalized ["asdasdasd"] = ""
val test5c = longest_capitalized ["A","bc","DC"] = "DC"
val test5d = longest_capitalized ["A","bcasdasdasd","DC"] = "DC"
val test5e = longest_capitalized ["A","Bcasdasdasd","DC"] = "Bcasdasdasd"

(*  *)
val test6a = rev_string "abc" = "cba"
val test6b = rev_string "abcadasdasdaczxczcqcqwqe2134234234" = String.rev "abcadasdasdaczxczcqcqwqe2134234234"
val test6c = rev_string "" = ""
(*  *)
val test7a = first_answer (fn x => if x > 3 then SOME x else NONE) [1,2,3,4,5] = 4
val test7b = first_answer (fn x => if x > 3 then SOME x else NONE) [1,2,3,12,5] = 12
val test7c = first_answer (fn x => if x > 0 then SOME x else NONE) [1,2,3,12,5] = 1
val test7d = first_answer (fn x => if x = 5 then SOME x else NONE) [1,2,3,12,5] = 5
val test7e = (first_answer (fn x => if x = 5 then SOME x else NONE) [1,2,3,12,13] = 5) 
    handle NoAnswer => true = true
(*  *)
val test8a = all_answers (fn x => if x = 1 then SOME [x] else NONE) [2,3,4,5,6,7] = NONE
val test8b = all_answers (fn x => if x = 1 then SOME [x] else NONE) [1,1,1,1,1,1] = SOME [1,1,1,1,1,1]
val test8b = all_answers (fn x => if x = 1 then SOME [x] else NONE) [1,1,1,1,1,1] = SOME [1,1,1,1,1,1]
(*  *)
(* val test9a = count_wildcards Wildcard = 1 *)
(*  *)
(* val test9b = count_wild_and_variable_lengths (Variable("a")) = 1 *)
(*  *)
(* val test9c = count_some_var ("x", Variable("x")) = 1 *)
(*  *)
(* val test10 = check_pat (Variable("x")) = true *)
(*  *)
(* val test11 = match (Const(1), UnitP) = NONE *)
(*  *)
(* val test12 = first_match Unit [UnitP] = SOME [] *)

