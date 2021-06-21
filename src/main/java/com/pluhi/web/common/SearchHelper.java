package com.pluhi.web.common;

public final class SearchHelper {
	
	public static String withAll(String text) {
		if (text == null) {
			return "%";
		}
		return text.concat("%");
	}

}
