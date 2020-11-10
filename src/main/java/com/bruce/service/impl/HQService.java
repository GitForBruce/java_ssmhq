package com.bruce.service.impl;

import com.bruce.bean.HQInfo;
import com.bruce.dao.IHQDao;
import com.bruce.service.IHQService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HQService implements IHQService {

    @Autowired
    private IHQDao hqDao;

    @Override
    public List<HQInfo> findall() {
        return hqDao.findall();
    }

    @Override
    public List<HQInfo> findfailure() {return hqDao.findfailure();}

}
