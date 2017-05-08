package com.gongchuangsu.ssh.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;

/**
 * @author GongchuangSu
 * @function Ö§³Öjava.sql.Date×ª»»
 * @date 2017-05-08
 */
public class DateJsonValueProcessor implements JsonValueProcessor{
	
	public static final String DEFAULT_DATE_PATTERN = "yyyy-MM-dd HH:mm:ss";
	private DateFormat dateFormat;

    public DateJsonValueProcessor(String datePattern) {
    	try{
    		dateFormat = new SimpleDateFormat(datePattern);
    	}catch(Exception e){
    		dateFormat = new SimpleDateFormat(DEFAULT_DATE_PATTERN);
    	}
	}
	
	@Override
	public Object processArrayValue(Object value, JsonConfig jsonConfig) {
		return process(value);
	}

	@Override
	public Object processObjectValue(String key, Object value, JsonConfig jsonConfig) {
		return process(value);
	}
	
	private Object process(Object value){
		if(value == null){
			value = new Date();
		}
		return dateFormat.format((Date)value);
	}
}
