package com.jizhang.service.impl;

import com.jizhang.dao.core.RoleInfoDao;
import com.jizhang.model.core.RoleInfo;
import com.jizhang.service.base.BaseService;
import org.springframework.stereotype.Service;
import java.util.List;
/**
 * 角色信息服务
 */
@Service("roleInfoService")
public class RoleInfoService extends BaseService<RoleInfoDao,RoleInfo> {
    public List<RoleInfo> findByRoleId(long roleId){
        return modelDao.findByRoleId(roleId);
    }
}
