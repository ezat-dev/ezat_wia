package com.ace.dao;

import java.util.List;

public interface TrendDao {
    List<List<Integer>> getTrendData(String startDate, String endDate);
}
