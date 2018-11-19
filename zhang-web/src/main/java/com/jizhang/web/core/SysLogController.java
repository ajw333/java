package com.jizhang.web.core;


import com.jizhang.model.core.SysLogs;
import com.jizhang.service.impl.SysLogService;
import com.jizhang.web.base.WebController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/v1/syslog")
public class SysLogController extends WebController<SysLogService,SysLogs> {
}
