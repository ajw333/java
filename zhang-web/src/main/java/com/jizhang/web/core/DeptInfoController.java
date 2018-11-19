package com.jizhang.web.core;

import com.jizhang.model.core.DeptInfo;
import com.jizhang.service.impl.DeptInfoService;
import com.jizhang.web.base.WebController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/v1/deptInfo")
public class DeptInfoController extends WebController<DeptInfoService,DeptInfo> {
}
