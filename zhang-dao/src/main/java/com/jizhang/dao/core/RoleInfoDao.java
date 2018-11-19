package com.jizhang.dao.core;

import com.jizhang.dao.base.BaseDao;
import com.jizhang.model.core.RoleInfo;
import org.springframework.stereotype.Repository;
import java.util.List;
/**
 * 角色信息
 * Author QQ:511570155
 * Date 2018-6-28 10:01 zhang
 */
@Repository
public interface RoleInfoDao extends BaseDao<RoleInfo> {
    List<RoleInfo> findByRoleId(long roleId);
}
