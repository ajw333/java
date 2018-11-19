package com.jizhang.dao.core;

import com.jizhang.dao.base.BaseDao;
import com.jizhang.model.core.FuncInfo;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 * 功能
 * Author QQ:511570155
 * Date 2018-6-28 10:01 zhang
 */
@Repository
public interface FuncInfoDao extends BaseDao<FuncInfo> {
    List<FuncInfo> findByRoleId(long roleId);
}
