package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemDataDAO;
import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemDataAction extends ActionSupport implements SessionAware{

	private String id;
	private ItemInfoDTO itemDataDTO;
	private Map<String, Object> session;

	public String execute() throws SQLException {
		ItemDataDAO dao = new ItemDataDAO();
		itemDataDTO = dao.getItemInfo(id);
		if (itemDataDTO.getItemName() == null) {
			itemDataDTO = null;
		}

		return SUCCESS;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public ItemInfoDTO getItemDataDTO() {
		return itemDataDTO;
	}

	public void setItemDataDTO(ItemInfoDTO itemDataDTO) {
		this.itemDataDTO = itemDataDTO;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}

