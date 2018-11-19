package com.jizhang.web.core;

import com.jizhang.model.core.RoleInfo;
import com.jizhang.service.impl.RoleInfoService;
import com.jizhang.web.base.WebController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 角色
 * QQ:511570155
 */
@RestController
@RequestMapping(value = "/v1/roleInfo")
public class RoleInfoController extends WebController<RoleInfoService,RoleInfo> {
}
