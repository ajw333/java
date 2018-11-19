package com.jizhang.web.core;

import com.jizhang.model.core.FuncInfo;
import com.jizhang.service.impl.FuncInfoService;
import com.jizhang.web.base.WebController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/v1/funcInfo")
public class FuncInfoController extends WebController<FuncInfoService,FuncInfo> {
}
