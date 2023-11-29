// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_pexe(){
if place_meeting (x-5, y, Obj_parede)
	{
	while !place_meeting (x +sign(hveloc), y, Obj_parede)	
		{
		x += sign (hveloc);
		}
		hveloc = 0
	}
	
x += hveloc;


if place_meeting(x, y -5, Obj_parede)
	{
		while !place_meeting(x, y + sign(vveloc), Obj_parede)
			{
				y += sign (vveloc);
			}
		vveloc=0;
	}
y += vveloc;
}

