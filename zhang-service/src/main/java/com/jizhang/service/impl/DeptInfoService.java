package com.jizhang.service.impl;

import com.jizhang.dao.core.DeptInfoDao;
import com.jizhang.model.core.DeptInfo;
import com.jizhang.model.core.RoleInfo;
import com.jizhang.service.base.BaseService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 部门服务
 */
@Service("deptInfoService")
public class DeptInfoService extends BaseService<DeptInfoDao,DeptInfo> {
    public List<DeptInfo> findByRoleId(long roleId){
        return modelDao.findByRoleId(roleId);
    }
}
