package com.bruce.dao;

import com.bruce.bean.HQInfo;

import java.util.List;

public interface IHQDao {

    //list all hq information
    public List<HQInfo> findall();

    //list failure information
    public List<HQInfo> findfailure();

}
