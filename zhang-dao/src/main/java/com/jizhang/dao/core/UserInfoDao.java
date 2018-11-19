package com.jizhang.dao.core;

import com.jizhang.dao.base.BaseDao;
import com.jizhang.model.core.UserInfo;
import org.springframework.stereotype.Repository;

/**
 * 用户信息
 * Author QQ:511570155
 * Date 2018-6-28 10:01 zhang
 */
@Repository
public interface UserInfoDao extends BaseDao<UserInfo> {
    UserInfo findByUserName(String username);
}
