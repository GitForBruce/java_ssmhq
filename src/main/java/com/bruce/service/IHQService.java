package com.bruce.service;

import com.bruce.bean.HQInfo;

import java.util.List;

public interface IHQService {

    List<HQInfo> findall();

    List<HQInfo> findfailure();
}
