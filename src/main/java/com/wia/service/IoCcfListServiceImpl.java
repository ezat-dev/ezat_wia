package com.wia.service;

import java.util.List;
import com.wia.dao.IoCcfListDao;
import com.wia.domain.IoCcfList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IoCcfListServiceImpl implements IoCcfListService {

    @Autowired
    private IoCcfListDao ioCcfListDao;

    @Override
    public List<IoCcfList> getIoCcfList(IoCcfList ioCcfList1) {
        return ioCcfListDao.getIoCcfList(ioCcfList1);
    }
}
