package com.jizhang.service.impl;

import com.jizhang.dao.core.DeptInfoDao;
import com.jizhang.model.core.DeptInfo;
import com.jizhang.service.base.BaseService;
import org.springframework.stereotype.Service;

/**
 * 部门服务
 */
@Service("deptInfoService")
public class DeptInfoService extends BaseService<DeptInfoDao,DeptInfo> {
}
