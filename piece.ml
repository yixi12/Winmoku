open Boardstuffs
open Pieceobject
open Graphics

class piece (v: occupied): piece_object =
object (self)

	val mutable value: occupied = v

	method get_value = value

	method set_value newval = value <- newval

	method draw (i:index) = match v with
		|Black -> self#circle i obj_width obj_width Graphics.black
		|White -> self#unf_circle i obj_width obj_width Graphics.black
		|Unocc -> ()

	method private circle ((x,y):int*int) (width:int) (height:int)
             (bg:Graphics.color) : unit =
    	Graphics.set_color bg ;
    	Graphics.fill_circle ((x+1)*width) ((y+1)*height) 
                         (min width height / 2) 

    method private unf_circle ((x,y):int*int) (width:int) (height:int)
             (bg:Graphics.color) : unit =
    	Graphics.set_color bg ;
    	Graphics.draw_circle ((x+1)*width) ((y+1)*height) 
                         (min width height / 2) 

end