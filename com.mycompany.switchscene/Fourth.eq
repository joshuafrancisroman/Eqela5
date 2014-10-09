
/*
 * Fourth
 * Created by Eqela Studio 2.0b7.4
 */

public class Fourth : SEScene
{
	
	SESprite bg;
	SESprite opt1;
	SESprite opt2;
	SESprite opt3;
	SESprite opt4;
	
	public void cleanup() {
		base.cleanup();
	}
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_font("style", "arial bold color=white", 40);
		bg = add_sprite_for_color(Color.instance("black"),0.25*get_scene_width(),0.25*get_scene_height());
		bg.move(0.75*get_scene_width(),0.75*get_scene_height());
		opt1 = add_sprite_for_text("Red","style");
		opt1.move(0.75*get_scene_width(),0.75*get_scene_height());
		opt2 = add_sprite_for_text("Blue","style");
		opt2.move(0.75*get_scene_width(),0.8125*get_scene_height());
		opt3 = add_sprite_for_text("Green","style");
		opt3.move(0.75*get_scene_width(),0.875*get_scene_height());
		opt4 = add_sprite_for_text("Main","style");
		opt4.move(0.75*get_scene_width(),0.9375*get_scene_height());
	}

	
	public void on_pointer_press(SEPointerInfo pi)
	{
		if(pi.is_inside(0.75*get_scene_width(), 0.75*get_scene_height(), get_scene_width(), 0.8125*get_scene_height())) {
			switch_scene(new First());
		}
		if(pi.is_inside(0.75*get_scene_width(), 0.8125*get_scene_height(), get_scene_width(), 0.875*get_scene_height())) {
			switch_scene(new Second());
		}
		if(pi.is_inside(0.75*get_scene_width(), 0.875*get_scene_height(), get_scene_width(), 0.9375*get_scene_height())) {
			switch_scene(new Third());
		}
		
		if(pi.is_inside(0.75*get_scene_width(), 0.9375*get_scene_height(), get_scene_width(), get_scene_height())) {
			switch_scene(new MainScene());
		}
		
	}
}
