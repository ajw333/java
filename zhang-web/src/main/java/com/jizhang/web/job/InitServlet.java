package com.jizhang.web.job;

import com.jizhang.model.core.QuartzJob;
import com.jizhang.service.impl.QuartzJobService;
import com.jizhang.web.util.SpringContextUtil;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * 系统初始读取配置
 */
@Component
public class InitServlet implements InitializingBean {

    @Override
    public void afterPropertiesSet() throws Exception {
        QuartzJobService userInfoService = (QuartzJobService) SpringContextUtil.getBean("quartzJobService");
        List<QuartzJob> lst = userInfoService.findAll(null);
        for (QuartzJob userInfo : lst) {
            System.out.println(userInfo.getId());
        }
    }
}
