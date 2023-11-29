// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações


 function inimigoC(){
 if place_meeting (x + hveloc, y, Obj_parede)
	{
	while !place_meeting (x +sign(hveloc), y, Obj_parede)	
		{
		x += sign (hveloc);
		}
		hveloc = 0
	}
	
x += hveloc;


if place_meeting(x, y + vveloc, Obj_parede)
	{
		while !place_meeting(x, y + sign(vveloc), Obj_parede)
			{
				y += sign (vveloc);
			}
		vveloc=0;
	}
y += vveloc;
 
 
 }
	 function checar(){
 if (distance_to_object(perso) <= dist_aggro ) {
	 estado = perseguir;
	 
	 
	 }
	
	 
	 
	 }
function inimigo(){
	checar();
	prox_estado = choose(inimigo_andando,inimigo_parado);
	
	if prox_estado == inimigo_andando{
		
		estado = inimigo_andando;
		dest_x = irandom_range(0, room_width)
		dest_x = irandom_range(0, room_height)
	}else if  prox_estado == inimigo_parado{
		
		estado = inimigo_parado;
		
	}

}

function inimigo_andando(){
	checar();
	image_speed = 1;
	
	if distance_to_point(dest_x, dest_y) > veloc{
	var _dir = point_direction(x,y,dest_x,dest_y);
	hveloc = lengthdir_x(veloc, _dir);
	vveloc = lengthdir_y(veloc, _dir);
	
	
inimigoC();
	}else {
	   x= dest_x;
	   y= dest_y;
	
	}
	
	
	
}

function inimigo_parado(){
	checar();
	
	image_speed= 0.5;
}

function perseguir(){
image_speed = 1.5;

if (room=caverna3){
dest_x = pexe.x;
dest_y = pexe.y;
}
else if (room=fase3nika){
dest_x = skinN.x;
dest_y = skinN.y;
}else if (room=caverna4){
dest_x = pexe.x;
dest_y = pexe.y;
}else if (room=fase4nika){
dest_x = skinN.x;
dest_y = skinN.y;
}else if (room=fase3dante){
dest_x = skinD.x;
dest_y = skinD.y;
}else if (room=fase4dante){
dest_x = skinD.x;
dest_y = skinD.y;
}
else if (room=fase3sanji){
dest_x = skinS.x;
dest_y = skinS.y;
}else if (room=fase4sanji){
dest_x = skinS.x;
dest_y = skinS.y;
}




var _dir = point_direction(x,y, dest_x, dest_y);
hveloc = lengthdir_x(veloc_perseg, _dir);
vveloc = lengthdir_y(veloc_perseg, _dir);

inimigoC();

if ( distance_to_object(perso) >= dist_desaggro ){
 
estado = inimigo;
alarm[0] = irandom_range(120,240);

}


}
