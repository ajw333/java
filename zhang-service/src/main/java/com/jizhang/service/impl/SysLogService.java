package com.jizhang.service.impl;

import com.jizhang.dao.core.SysLogsDao;
import com.jizhang.model.core.SysLogs;
import com.jizhang.service.base.BaseService;
import org.springframework.stereotype.Service;

/**
 * 日志服务
 */
@Service("sysLogService")
public class SysLogService extends BaseService<SysLogsDao,SysLogs> {
}
