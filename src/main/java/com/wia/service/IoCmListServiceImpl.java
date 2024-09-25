package com.wia.service;

import java.util.List;
import com.wia.dao.IoCmListDao;
import com.wia.domain.IoCmList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IoCmListServiceImpl implements IoCmListService {

    @Autowired
    private IoCmListDao ioCmListDao;

    @Override
    public List<IoCmList> getIoCmList(IoCmList ioCmList1) {
        return ioCmListDao.getIoCmList(ioCmList1);
    }
}
