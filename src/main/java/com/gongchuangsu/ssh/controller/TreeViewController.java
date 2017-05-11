package com.gongchuangsu.ssh.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gongchuangsu.ssh.model.TreeViewObj;
import com.gongchuangsu.ssh.util.TreeViewPropertyFilter;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

@Controller
public class TreeViewController {
	
	@Autowired
	private DataSource dataSource;
	
	@RequestMapping(value = "treeview", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView otherChart(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{
		response.setContentType("application/json;charset=UTF-8");
		String action = request.getParameter("action");
		if("getData".equals(action)){
			JsonConfig jsonConfig = new JsonConfig();
			TreeViewPropertyFilter filter = new TreeViewPropertyFilter();
			jsonConfig.setJsonPropertyFilter(filter);
			String json = JSONArray.fromObject(getTreeData(), jsonConfig).toString();
			response.getWriter().write(json);
			return null;
		}else{
			ModelAndView mv = new ModelAndView("treeview");
			return mv;
		}
	}
	
	/**
	 * ���ܣ�ͨ��JDBC��ȡ���ݿ����ݣ�����ָ����ʽ���з���
	 * ˵��������һ���������Ľṹ��������Դ�����ű�
	 *       һ������Ժϵ��info_yxlb��
	 *       ��������רҵ��info_yxxx��
	 *       ���������༶��info_yxmx��
	 */
	public ArrayList<TreeViewObj> getTreeData(){
		ArrayList<TreeViewObj> list = new ArrayList<TreeViewObj>();
		String sql = "";
		Connection conn = null;
		// һ����д�루yxlbbh��Ժϵ����� yxlbmc��Ժϵ������ƣ�
	    sql = "select * from info_yxlb";		
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				TreeViewObj obj = new TreeViewObj();
				obj.setSelfId(rs.getString("yxlbbh"));
				obj.setText(rs.getString("yxlbmc"));
				list.add(obj);
			}
			rs.close();
			ps.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally{
			if(conn != null){
				try{
					conn.close();
				}catch(SQLException e){}
			}
		}
		// ������д�루yxlbbh��Ժϵ������� yxzybh��Ժϵרҵ��� yxzymc��Ժϵרҵ���ƣ�
	    sql = "select * from info_yxxx";		
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				TreeViewObj obj = new TreeViewObj();
				obj.setSelfId(rs.getString("yxzybh"));
				obj.setParentId(rs.getString("yxlbbh"));
				obj.setText(rs.getString("yxzymc"));
				TreeViewObj parentObj = findTreeNodeById(list, rs.getString("yxlbbh"));
				int index = list.indexOf(parentObj);
				if(parentObj.getNodes() == null)
					parentObj.setNodes(new ArrayList<TreeViewObj>());
				parentObj.getNodes().add(obj);
				list.set(index, parentObj);
			}
			rs.close();
			ps.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally{
			if(conn != null){
				try{
					conn.close();
				}catch(SQLException e){}
			}
		}
		// ������д�루yxzybh�� Ժϵרҵ��� zybjmc��רҵ�༶���ƣ�
	    sql = "select * from info_yxmx";		
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				TreeViewObj obj = new TreeViewObj();
				obj.setParentId(rs.getString("yxzybh"));
				obj.setText(rs.getString("zybjmc"));
				TreeViewObj parentObj = findTreeNodeById(list, rs.getString("yxzybh"));
				TreeViewObj pParentObj = findTreeNodeById(list, parentObj.getParentId());
				int index = list.indexOf(pParentObj);
			    int index_2 = pParentObj.getNodes().indexOf(parentObj);
				if(parentObj.getNodes() == null)
					parentObj.setNodes(new ArrayList<TreeViewObj>());
				parentObj.getNodes().add(obj);
				pParentObj.getNodes().set(index_2, parentObj);
				list.set(index, pParentObj);
			}
			rs.close();
			ps.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally{
			if(conn != null){
				try{
					conn.close();
				}catch(SQLException e){}
			}
		}
		return list;
	}
	
	/**
	 * ���ܣ���list�в���selfIdΪidֵ��TreeViewObj��������
	 * @param (ArrayList<TreeViewObj>)list
	 * @param id
	 * @return
	 */
	public TreeViewObj findTreeNodeById(ArrayList<TreeViewObj> list, String id){
		for(int i = 0; i< list.size(); i++){
			TreeViewObj obj = list.get(i);
			TreeViewObj resultNode = findTreeNodeById(obj, id);
			if(resultNode != null)
				return resultNode;
		}
		return null;
	}
	
	/**
	 * ���ܣ���TreeViewObj�в���selfIdΪidֵ��TreeViewObj��������
	 * @param obj
	 * @param id
	 * @return
	 */
	public TreeViewObj findTreeNodeById(TreeViewObj obj, String id){
		if(id.equals(obj.getSelfId()))
			return obj;
		if(obj.getNodes() == null)
			obj.setNodes(new ArrayList<TreeViewObj>());
		ArrayList<TreeViewObj> childList = obj.getNodes();
		if(childList.isEmpty() || childList == null){
			return null;
		}else{
			int childNumber = obj.getNodes().size();
			for(int i = 0; i < childNumber; i++){
				TreeViewObj child = childList.get(i);
				TreeViewObj resultNode = findTreeNodeById(child, id); // �ݹ����
				if(resultNode != null)
					return resultNode;
			}
		}
		return null;
	}
}
