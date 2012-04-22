(* Main.ml Description: 						    *
 * Call draw: Draw will take user input, and return a board                 *
 * Call board: Find all threats on board from draw; create a list of board, *
 * threat pairs.							    *
 * Call on each pair in the list:					    *
 * (1) gen_threat_tree							    *
 * (2) evaluate_tree  							    *
 * from tree. If (2) evaluates to a winning sequence, create new board with *
 * first move from that sequence, and send board to draw.                   *)

open Board
open Boardobject
(*open Tree
open Draw*)
open GUI
open Boardstuffs
open BThreats 

let gridarrayhor = Array.make world_size (0,0,0,0);;
let gridarrayver = Array.make world_size (0,0,0,0);;

let floor = obj_width
let ceiling = world_size * obj_width

let draw_grid () = 
    Array.iteri (fun x _ -> gridarrayhor.(x) <- (obj_width,((x+1)*obj_width),
    		   ((world_size)*obj_width),((x+1)*obj_width))) 
    	gridarrayhor;
    Graphics.draw_segments gridarrayhor;
    Array.iteri (fun x _ -> gridarrayver.(x) <- (((x+1)*obj_width), obj_width,
    		   ((x+1)*obj_width),((world_size)*obj_width))) 
    	gridarrayver;
    Graphics.draw_segments gridarrayver

(** defines leeway for the click **)
let leeway = obj_width / 4;;

let roundfloat (f:float) : int = 
	let remainder = mod_float f 1. in
	if remainder < 0.5 then int_of_float f
	else (int_of_float f) + 1 

(** Finds the closest index that is next to the click **)
let round_click ((x,y):int*int) = 
	(abs (roundfloat ((float_of_int (x - obj_width))/.(float_of_int obj_width))), 
	abs (roundfloat ((float_of_int (y - obj_width))/.(float_of_int obj_width))))

let respond_click ((x,y):int*int) = 
	if ( (x < floor - leeway) || (y < floor - leeway) ||
		(x > ceiling + leeway) || (y > ceiling + leeway) )
	then ()
	else 
		(let (i,j) = round_click (x,y) in
		(*print_int i; print_string ", ";
		print_int j; print_string "  ";
		flush_all ();*)
		Board.set (i,j))

let test_board () =
	GUI.run_game
		(* Initialize the board to be empty *)
		(fun () -> Board.reset ();
					draw_grid ();
      				Board.indices (fun p -> (Board.get p)#draw p))
		begin fun (i:int*int) -> 
      		(*Graphics.clear_graph () ; *)
      		(* draw loop *)
      		respond_click i;
      		draw_grid ();
      		Board.indices (fun p -> (Board.get p)#draw p)
      	end ;;

let evaluate_board board =
  let threatlist = BThreats.get_threats board in
  let update_board threat = 
    let (tgain, _, _) = threat in
      ((Board.insert board tgain Black), threat) 
  in 
  let boardlist = map update_board threatlist in
  let treelist = map (fun (x, y) -> (BThreats.gen_threat_tree x y)) boardlist in
  let win tlist =   
    match tlist with 
    | [] -> false
    | hd::tl -> (BThreats.evaluate_tree hd) || (win tl)
  in
    win treelist

let _ = test_board () ;;
