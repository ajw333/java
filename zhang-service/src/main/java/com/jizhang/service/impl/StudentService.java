package com.jizhang.service.impl;

import com.jizhang.dao.core.StudentDao;
import com.jizhang.model.core.Student;
import com.jizhang.service.base.BaseService;
import org.springframework.stereotype.Service;

@Service("studentService")
public class StudentService extends BaseService<StudentDao,Student> {
}
