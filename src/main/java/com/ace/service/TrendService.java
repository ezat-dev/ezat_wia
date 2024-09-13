package com.ace.service;

import java.util.List;


public interface TrendService {

	List<List<Integer>> getTrendData(String startDate, String endDate);
}