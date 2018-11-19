package com.jizhang.service.impl;

import com.jizhang.dao.core.FuncInfoDao;
import com.jizhang.model.core.FuncInfo;
import com.jizhang.service.base.BaseService;
import org.springframework.stereotype.Service;
import java.util.List;

/**
 * 功能服务
 */
@Service("funcInfoService")
public class FuncInfoService extends BaseService<FuncInfoDao,FuncInfo> {
    public List<FuncInfo> findByRoleId(long roleId){
        return modelDao.findByRoleId(roleId);
    }
}
