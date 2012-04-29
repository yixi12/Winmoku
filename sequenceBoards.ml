open Board
open Boardstuffs

let threatseq1 (b:Myboard.board) = 
	let b1 = Myboard.insertspecial b (10,10) Black in
	let b1 = Myboard.insertspecial b1 (9,10) Black in
	let b1 = Myboard.insertspecial b1 (11,10) Black in
	let b1 = Myboard.insertspecial b1 (10,9) Black in
	let b1 = Myboard.insertspecial b1 (10,8) Black in
	let b1 = Myboard.insertspecial b1 (9,8) Black in
	let b1 = Myboard.insertspecial b1 (11,8) Black in
	let b1 = Myboard.insertspecial b1 (9,7) Black in
	let b1 = Myboard.insertspecial b1 (9,6) Black in
	let b1 = Myboard.insertspecial b1 (8,6) Black in
	let b1 = Myboard.insertspecial b1 (10,6) Black in
	let b1 = Myboard.insertspecial b1 (8,10) White in
	let b1 = Myboard.insertspecial b1 (8,9) White in
	let b1 = Myboard.insertspecial b1 (9,9) White in
	let b1 = Myboard.insertspecial b1 (8,8) White in
	let b1 = Myboard.insertspecial b1 (8,7) White in
	let b1 = Myboard.insertspecial b1 (7,6) White in
	let b1 = Myboard.insertspecial b1 (9,5) White in
	let b1 = Myboard.insertspecial b1 (10,7) White in
	let b1 = Myboard.insertspecial b1 (12,7) White in
	let b1 = Myboard.insertspecial b1 (12,8) White in
	let b1 = Myboard.insertspecial b1 (11,9) White in
	b1

let threatseq2 (b:Myboard.board) =
	let b1 = Myboard.insertspecial b (10,10) Black in
	let b1 = Myboard.insertspecial b1 (11,9) Black in
	let b1 = Myboard.insertspecial b1 (12,9) Black in
	let b1 = Myboard.insertspecial b1 (12,11) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	let b1 = Myboard.insertspecial b1 (9,11) White in
	let b1 = Myboard.insertspecial b1 (9,10) White in
	let b1 = Myboard.insertspecial b1 (9,9) White in
	let b1 = Myboard.insertspecial b1 (11,11) White in
	let b1 = Myboard.insertspecial b1 (13,10) White in
	b1

let threatseq3 (b:Myboard.board) =
	let b1 = Myboard.insertspecial b (10,10) Black in
	let b1 = Myboard.insertspecial b1 (11,9) Black in
	let b1 = Myboard.insertspecial b1 (12,9) Black in
	let b1 = Myboard.insertspecial b1 (12,11) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	let b1 = Myboard.insertspecial b1 (9,12) Black in
	b1

let threatseq4 (b:Myboard.board) =
	let b1 = Myboard.insertspecial b (7,11) Black in
	let b1 = Myboard.insertspecial b1 (5,11) Black in
	let b1 = Myboard.insertspecial b1 (6,12) Black in
	let b1 = Myboard.insertspecial b1 (7,13) Black in
	let b1 = Myboard.insertspecial b1 (9,13) Black in
	let b1 = Myboard.insertspecial b1 (8,14) Black in
	let b1 = Myboard.insertspecial b1 (10,14) Black in
	let b1 = Myboard.insertspecial b1 (9,14) White in
	let b1 = Myboard.insertspecial b1 (8,13) White in
	let b1 = Myboard.insertspecial b1 (7,12) White in
	let b1 = Myboard.insertspecial b1 (6,10) White in
	let b1 = Myboard.insertspecial b1 (9,15) White in
	let b1 = Myboard.insertspecial b1 (4,10) White in
	b1
