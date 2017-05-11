package com.gongchuangsu.ssh.util;

import com.gongchuangsu.ssh.model.TreeViewObj;
import net.sf.json.util.PropertyFilter;

/**
 * @author GongchuangSu
 * @function 在TreeViewObj对象转换为Json时过滤nodes为空或大小为0的属性
 * @date 2017-05-08
 */
public class TreeViewPropertyFilter implements PropertyFilter{

   /** 
    * @param source属性所属的java bean对象 
    * @param name 属性名称 
    * @param value 属性值 
    * @return 如果不希望当前属性写入json，则返回true， 否则返回false 
    */  
	@Override
	public boolean apply(Object source, String name, Object value) {
		if(((source instanceof TreeViewObj) && "nodes".equals(name) && (value == null || ((TreeViewObj)source).getNodes().size()==0)) // 过滤nodes为空或大小为0的属性
		   || name.equals("selfId")    // 过滤selfId属性
		   || name.equals("parentId")) // 过滤parentId属性
			return true;
		else
		    return false;
	}
}
