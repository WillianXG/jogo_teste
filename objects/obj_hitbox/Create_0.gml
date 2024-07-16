//Sistema de colisão
collision_list= ds_list_create();
hitbox_list = ds_list_create();
var c = instance_place_list(x,y,obj_inimigo,collision_list,false);
var d = instance_place_list(x,y,obj_inimigo2,collision_list,false);

if(c > 0)
{
	for(var i = 0;i < ds_list_size(collision_list);i++)
	{
		var target = collision_list[| i];
		if(!ds_list_find_value(hitbox_list,target)){
			ds_list_add(hitbox_list,target);
			with(target){
				life-=5;
			}
		}
	}
}


if(d > 0)
{
	for(var i = 0;i < ds_list_size(collision_list);i++)
	{
		var target = collision_list[| i];
		if(!ds_list_find_value(hitbox_list,target)){
			ds_list_add(hitbox_list,target);
			with(target){
				life-=5;
			}
		}
	}
}