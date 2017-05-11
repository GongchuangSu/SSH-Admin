package com.gongchuangsu.ssh.util;

import com.gongchuangsu.ssh.model.TreeViewObj;
import net.sf.json.util.PropertyFilter;

/**
 * @author GongchuangSu
 * @function ��TreeViewObj����ת��ΪJsonʱ����nodesΪ�ջ��СΪ0������
 * @date 2017-05-08
 */
public class TreeViewPropertyFilter implements PropertyFilter{

   /** 
    * @param source����������java bean���� 
    * @param name �������� 
    * @param value ����ֵ 
    * @return �����ϣ����ǰ����д��json���򷵻�true�� ���򷵻�false 
    */  
	@Override
	public boolean apply(Object source, String name, Object value) {
		if(((source instanceof TreeViewObj) && "nodes".equals(name) && (value == null || ((TreeViewObj)source).getNodes().size()==0)) // ����nodesΪ�ջ��СΪ0������
		   || name.equals("selfId")    // ����selfId����
		   || name.equals("parentId")) // ����parentId����
			return true;
		else
		    return false;
	}
}
