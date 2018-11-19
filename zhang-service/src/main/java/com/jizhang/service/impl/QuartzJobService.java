package com.jizhang.service.impl;

import com.jizhang.dao.core.QuartzJobDao;
import com.jizhang.model.core.QuartzJob;
import com.jizhang.service.base.BaseService;
import org.springframework.stereotype.Service;

/**
 * 定时任务
 */
@Service("quartzJobService")
public class QuartzJobService  extends BaseService<QuartzJobDao,QuartzJob> {
}
