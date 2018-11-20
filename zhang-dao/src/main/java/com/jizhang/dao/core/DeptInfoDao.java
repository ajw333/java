package com.jizhang.dao.core;

import com.jizhang.dao.base.BaseDao;
import com.jizhang.model.core.DeptInfo;
import com.jizhang.model.core.RoleInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 部门
 * Author QQ:511570155
 * Date 2018-6-28 10:00
 */
@Repository
public interface DeptInfoDao extends BaseDao<DeptInfo> {
    List<DeptInfo> findByRoleId(long roleId);
}
