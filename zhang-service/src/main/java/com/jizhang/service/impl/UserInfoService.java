package com.jizhang.service.impl;

import com.jizhang.dao.core.UserInfoDao;
import com.jizhang.model.core.DeptInfo;
import com.jizhang.model.core.FuncInfo;
import com.jizhang.model.core.RoleInfo;
import com.jizhang.model.core.UserInfo;
import com.jizhang.model.dto.CommonDto;
import com.jizhang.model.dto.FuncInfoDto;
import com.jizhang.model.dto.UserInfoDto;
import com.jizhang.model.dto.UserLoginInfoDto;
import com.jizhang.service.base.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 用户信息服务类
 */
@Service("userInfoService")
public class UserInfoService extends BaseService<UserInfoDao,UserInfo> {
    @Autowired
    RoleInfoService roleInfoService;
    @Autowired
    DeptInfoService deptInfoService;
    @Autowired
    FuncInfoService funcInfoService;

    public  UserInfo findByUserName(String username){
      return modelDao.findByUserName(username.trim());
    }

    /**
     * 绑定登录数据
     *
     * @param userInfo
     * @return
     */
    public UserLoginInfoDto buildLoginData(UserInfo userInfo, String token) {
        UserLoginInfoDto userLoginInfoDto = new UserLoginInfoDto();
        userLoginInfoDto.userInfoDto = new UserInfoDto(userInfo); //设置用户信息
        userLoginInfoDto.userInfoDto.setToken(token);             //设置token
        RoleInfo roleInfo = roleInfoService.findOne(userInfo.getRoleId());
        userLoginInfoDto.roleInfoDto = new CommonDto(roleInfo);   //设置角色
        DeptInfo deptInfo = deptInfoService.findOne(userInfo.getDeptId());
        userLoginInfoDto.deptInfoDto = new CommonDto(deptInfo);   //设置部门
        List<FuncInfo> listFuncInfo = funcInfoService.findByRoleId(userInfo.getRoleId());
        List<FuncInfoDto> lstFunc = new ArrayList<FuncInfoDto>();
        if (listFuncInfo != null) {
            for (FuncInfo funcInfo : listFuncInfo) {
                if (funcInfo.getParentId() == 0L && funcInfo.getLevelVal() == 1) {
                    FuncInfoDto itemDto = new FuncInfoDto(funcInfo);
                    lstFunc.add(itemDto);
                }
            }
            for (FuncInfoDto itemDto : lstFunc) {
                for (FuncInfo funcInfo : listFuncInfo) {
                    if (itemDto.getId() == funcInfo.getParentId() && funcInfo.getLevelVal() == 2) {
                        if (itemDto.getSubItem() == null) {
                            List<FuncInfoDto> sublstFunc = new ArrayList<FuncInfoDto>();
                            sublstFunc.add(new FuncInfoDto(funcInfo));
                            itemDto.setSubItem(sublstFunc);
                        } else {
                            List<FuncInfoDto> sublstFunc = itemDto.getSubItem();
                            sublstFunc.add(new FuncInfoDto(funcInfo));
                        }
                    }
                }
            }
        }
        userLoginInfoDto.listfuncInfoDto = lstFunc;
        return userLoginInfoDto;
    }
}
