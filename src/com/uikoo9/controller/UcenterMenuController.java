package com.uikoo9.controller;

import com.uikoo9.util.jfinal.QController;
import com.uikoo9.util.jfinal.QControllerUrl;

/**
 * 用户中心-菜单controller
 * @author uikoo9
 */
@QControllerUrl("/ucenter/menu")
public class UcenterMenuController extends QController{
	
	/**
	 * 跳转到首页 
	 */
	public void index(){
		setAttr("qpage", list(getParaMap(), "t_ucenter_menu"));
		render("/WEB-INF/view/ucenter-menu-index.ftl");
	}
	
	/**
	 * 跳转到保存修改页 
	 */
	public void savep(){
		setAttr("row", get(getPara("id"), "t_ucenter_menu"));
		render("/WEB-INF/view/ucenter-menu-input.ftl");
	}
	
	/**
	 * 保存或修改
	 */
	public void save(){
		renderJson(save(getParaMap(), "t_ucenter_menu"));
	}
	
	/**
	 * 删除一条或多条
	 */
	public void del(){
		renderJson(del(getPara("id"), "t_ucenter_menu"));
	}
	
}
