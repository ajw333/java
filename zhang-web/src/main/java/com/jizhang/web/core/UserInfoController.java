package com.jizhang.web.core;

import com.jizhang.model.base.ConstValue;
import com.jizhang.model.core.UserInfo;
import com.jizhang.model.dto.ResultVo;
import com.jizhang.model.dto.UserLoginInfoDto;
import com.jizhang.service.impl.DeptInfoService;
import com.jizhang.service.impl.RoleInfoService;
import com.jizhang.service.impl.UserInfoService;
import com.jizhang.web.base.WebController;
import com.jizhang.web.util.Helper;
import com.jizhang.web.util.JWTUtil;
import com.jizhang.web.util.ZhangHandError;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * 用户信息接口
 */
@RestController
@RequestMapping(value = "/v1/userInfo")
public class UserInfoController extends WebController<UserInfoService,UserInfo> {
    @Autowired
    RoleInfoService roleInfoService;
    @Autowired
    DeptInfoService deptInfoService;

    /**
     * 登录系统
     * @param username
     * @param password
     * @return
     */
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public ResultVo login(@RequestParam("username") String username, @RequestParam("password") String password) {
        ResultVo vo = new ResultVo();
        UserInfo user = modelService.findByUserName(username.trim());
        if (user == null)
            throw new ZhangHandError("账号输入错误!");
        String encodedPassword = Helper.GetMd5Str(password, username.trim() + user.getSalt());
        if (!user.getPassWord().equals(encodedPassword))
            throw new ZhangHandError("密码输入错误!");
        if (user.getIs_Enable() != ConstValue.Is_Enable)
            throw new ZhangHandError("账号没有激活,请联系管理人员！");
        if (user.getIs_Delete() == ConstValue.Is_Delete)
            throw new ZhangHandError("账号已经删除,请联系管理人员！");
        String token= JWTUtil.sign(user.getId(), encodedPassword);
        UserLoginInfoDto userLoginInfoDto = modelService.buildLoginData(user, token);
        vo.setData(userLoginInfoDto);
        return vo;
    }

    /**
     * 是否包含用户名
     * @param username
     * @return
     */
    @RequestMapping(value = "/hasUserName",method = RequestMethod.GET)
    public ResultVo hasUserName(@RequestParam("username") String username) {
        ResultVo vo=new ResultVo();
        UserInfo fInfo = modelService.findByUserName(username.trim());
        if (fInfo != null) {
            throw new ZhangHandError("用户名已添加，请重新输入！");
        }
        return vo;
    }

    @RequestMapping(value = "/insertOne", method = RequestMethod.POST)
    public ResultVo insertOne(HttpServletRequest request, @RequestBody UserInfo model) throws Exception {
        UserInfo fInfo = modelService.findByUserName(model.getCode());
        if (fInfo != null) {
            throw new ZhangHandError("用户名已添加，请重新输入！");
        }
        String defaultPwd = "123456";
        model.setSalt(Helper.GetUUID());
        model.setPassWord(Helper.GetMd5Str(defaultPwd, model.getCode() + model.getSalt()));
        ResultVo vo = super.insertOne(request, model);
        return vo;
    }

}
