CREATE TABLE "ods"."XG_XSXXB" (
"XH" VARCHAR(20 ) NOT NULL COMMENT ' 学号',
"XY" VARCHAR(50 ) NULL COMMENT '学院名称',
"ZYMC" VARCHAR(50 ) NULL COMMENT '专业名称',
"BJMC" VARCHAR(50 ) NULL COMMENT '班级名称',
"BJDM" VARCHAR(20 ) NOT NULL COMMENT '班级代码',
"ZYDM" VARCHAR(20 ) NULL COMMENT '专业代码',
"XYDM" VARCHAR(20 ) NULL COMMENT '学院代码',
"BZ" VARCHAR(1000 ) NULL COMMENT '备注',
"XM" VARCHAR(64 ) NULL COMMENT '姓名',
"XMPY" VARCHAR(64 ) NULL COMMENT '姓名拼音',
"NJ" VARCHAR(10 ) NULL COMMENT '年级',
"SYD" VARCHAR(255 ) NULL COMMENT '生源地',
"CSRQ" VARCHAR(20 ) NULL COMMENT '出生日期',
"SFZH" VARCHAR(64 ) NULL COMMENT '身份证号码',
"XB" VARCHAR(4 ) NULL COMMENT '性别',
"MZ" VARCHAR(64 ) NULL COMMENT '民族代码',
"ZZMM" VARCHAR(20 ) NULL COMMENT '政治面貌代码',
"LXDH" VARCHAR(120 ) NULL COMMENT '联系电话',
"DZYX" VARCHAR(64 ) NULL COMMENT '电子邮箱',
"CYM" VARCHAR(32 ) NULL COMMENT '曾用名',
"SG" VARCHAR(10 ) NULL COMMENT '身高',
"TZ" VARCHAR(10 ) NULL COMMENT '体重',
"TC" VARCHAR(64 ) NULL COMMENT '特长',
"KSLB" VARCHAR(64 ) NULL COMMENT '考生类别',
"RXFS" VARCHAR(64 ) NULL COMMENT '入学方式',
"PYFS" VARCHAR(64 ) NULL COMMENT '培养方式',
"PYCC" VARCHAR(64 ) NULL COMMENT '培养层次',
"XJLB" VARCHAR(64 ) NULL COMMENT '学籍类别',
"XSZP" VARCHAR(64 ) NULL COMMENT '学生照片',
"XJZTM" VARCHAR(30 ) NULL COMMENT '学籍状态',
"XZ" VARCHAR(4 ) NULL COMMENT '学制',
"WHCD" VARCHAR(20 ) NULL COMMENT '文化程度',
"RXQDW" VARCHAR(255 ) NULL COMMENT '原毕业学院',
"JTDH" VARCHAR(20 ) NULL COMMENT '家庭电话',
"JRGQTSJ" VARCHAR(24 ) NULL COMMENT '加入共青团时间',
"JRGCDSJ" VARCHAR(24 ) NULL COMMENT '加入共产党时间',
"JTCYGC" VARCHAR(4 ) NULL COMMENT '家庭成员构成',
"JLCFJL" VARCHAR(300 ) NULL COMMENT '奖励处分经历',
"JKZK" VARCHAR(255 ) NULL COMMENT '健康状况',
"JTDZ" VARCHAR(255 ) NULL COMMENT '家庭详细地址',
"JTYB" VARCHAR(20 ) NULL COMMENT '家庭邮编',
"JG" VARCHAR(255 ) NULL COMMENT '籍贯',
"XX" VARCHAR(20 ) NULL COMMENT '血型',
"AH" VARCHAR(255 ) NULL COMMENT '爱好',
"SFDK" VARCHAR(4 ) NULL COMMENT '是否贷款',
"SHGXXM1" VARCHAR(20 ) NULL COMMENT '社会关系姓名1',
"SHGXGX1" VARCHAR(64 ) NULL COMMENT '社会关系关系1',
"SHGXGZDW1" VARCHAR(255 ) NULL COMMENT '社会关系工作单位1',
"SHGXZW1" VARCHAR(64 ) NULL COMMENT '社会关系职务1 ',
"SHGXDWDH1" VARCHAR(20 ) NULL COMMENT '社会关系单位电话1',
"SHGXSJHM1" VARCHAR(20 ) NULL COMMENT '社会关系手机号码1',
"SHGXXM2" VARCHAR(20 ) NULL COMMENT '社会关系姓名2',
"SHGXGX2" VARCHAR(64 ) NULL COMMENT '社会关系关系2',
"SHGXGZDW2" VARCHAR(255 ) NULL COMMENT '社会关系工作单位2',
"SHGXZW2" VARCHAR(64 ) NULL COMMENT '社会关系职务2',
"SHGXDWDH2" VARCHAR(20 ) NULL COMMENT '社会关系单位电话2',
"SHGXSJHM2" VARCHAR(20 ) NULL COMMENT '社会关系手机号码2',
"JTQKJJ" VARCHAR(255 ) NULL COMMENT '家庭情况简介',
"JTJJQK" VARCHAR(255 ) NULL COMMENT '家庭经济情况',
"SJHM" VARCHAR(20 ) NULL COMMENT '手机号码',
"BYXX" VARCHAR(1000 ) NULL COMMENT '毕业信息',
"KH" VARCHAR(20 ) NULL COMMENT '卡号',
"RXRQ" VARCHAR(20 ) NULL COMMENT '入学日期',
"FDYXM" VARCHAR(20 ) NULL COMMENT '辅导员姓名',
"GKCJ" VARCHAR(10 ) NULL COMMENT '高考成绩',
"QQHM" VARCHAR(20 ) NULL COMMENT 'QQ号码',
"HKXZ" VARCHAR(20 ) NULL COMMENT '户口性质',
"ZYJB" VARCHAR(20 ) NULL COMMENT '专业级别',
"HKSZD" VARCHAR(120 ) NULL COMMENT '户口所在地',
"SSYQ" VARCHAR(64 ) NULL COMMENT '宿舍苑区',
"SSLD" VARCHAR(64 ) NULL COMMENT '宿舍楼栋',
"JTDZS" VARCHAR(64 ) NULL COMMENT '家庭地址省',
"JTDZX" VARCHAR(64 ) NULL COMMENT '家庭地址市县',
"SFZSB" VARCHAR(20 ) NULL COMMENT '是否专升本',
"SFZFX" VARCHAR(10 ) NULL COMMENT '是否在分校',
"ZJDM" VARCHAR(20 ) NULL COMMENT '宗教代码',
"SFYBY" VARCHAR(6 ) DEFAULT '否'  NULL COMMENT '是否已毕业',
"BYNY" VARCHAR(10 ) NULL COMMENT '毕业年月',
"SFZX" VARCHAR(10 ) NULL COMMENT '是否在校',
"ZW" VARCHAR(64 ) NULL COMMENT '职务',
"THBS" VARCHAR(10 ) NULL COMMENT '替换标识',
"DYBJ" VARCHAR(10 ) NULL COMMENT '打印标记',
"SHBJ" VARCHAR(10 ) NULL COMMENT '审核标记',
"XWZSXLH" VARCHAR(20 ) NULL COMMENT '学位证书序列号',
"XWZSBH" VARCHAR(20 ) NULL COMMENT '学位证书编号',
"XW" VARCHAR(32 ) NULL COMMENT '学位',
"XZXM" VARCHAR(30 ) NULL COMMENT '校长姓名',
"ZSXLH" VARCHAR(20 ) NULL COMMENT '证书序列号',
"ZSBH" VARCHAR(20 ) NULL COMMENT '证书编号',
"BJYJL" VARCHAR(20 ) NULL COMMENT '毕结业结论',
"CSD" VARCHAR(64 ) NULL COMMENT '出生地县',
"ZSJJ" VARCHAR(20 ) NULL COMMENT '招生季节',
"XXXS" VARCHAR(32 ) NULL COMMENT '学习形式',
"BXLX" VARCHAR(32 ) NULL COMMENT '办学类型',
"BXXS" VARCHAR(32 ) NULL COMMENT '办学形式',
"FXZYFX" VARCHAR(32 ) NULL COMMENT '辅修专业方向',
"FXZY" VARCHAR(32 ) NULL COMMENT '辅修专业',
"ZYLB" VARCHAR(32 ) NULL COMMENT '专业类别',
"DQSZJ" VARCHAR(4 ) NULL COMMENT '当前所在级',
"PYFX" VARCHAR(32 ) NULL COMMENT '培养方向',
"ZYFX" VARCHAR(32 ) NULL COMMENT '专业方向',
"XXSZD" VARCHAR(64 ) NULL COMMENT '学校所在地 ',
"KSH" VARCHAR(32 ) NULL COMMENT '考生号',
"XXFX" VARCHAR(64 ) NULL COMMENT '学习方向',
"ZSLB" VARCHAR(64 ) NULL COMMENT '招生类别',
"GJ" VARCHAR(100 ) NULL COMMENT '国籍',
"SFJH" VARCHAR(4 ) NULL COMMENT '是否结婚',
"CCQJ" VARCHAR(200 ) NULL COMMENT '乘车区间',
"BYZFFZTDM" VARCHAR(20 ) NULL COMMENT '毕业证发放状态代码',
"XWZSXXDZ" VARCHAR(300 ) NULL COMMENT '校外住宿详细地址',
"JGS" VARCHAR(64 ) NULL COMMENT '籍贯省',
"JGSHI" VARCHAR(64 ) NULL COMMENT '籍贯市',
"JGX" VARCHAR(64 ) NULL COMMENT '籍贯县',
"SSBH" VARCHAR(20 ) NULL COMMENT '宿舍编号',
"RXNJ" VARCHAR(4 ) NULL COMMENT '入学年级',
"NFBY" VARCHAR(8 ) NULL COMMENT '能否毕业',
"SFZC" VARCHAR(6 ) NULL COMMENT '是否注册',
"DASFYL" VARCHAR(6 ) NULL COMMENT '档案是否遗留',
"DAYLYY" VARCHAR(300 ) NULL COMMENT '档案遗留原因',
"YXDM" VARCHAR(10 ) NULL COMMENT '院校代码',
"SFZZ" VARCHAR(10 ) NULL COMMENT '是否在职',
"SFSF" VARCHAR(10 ) NULL COMMENT '是否师范',
"SFDL" VARCHAR(10 ) NULL COMMENT '是否独立',
"DXHWP" VARCHAR(10 ) NULL COMMENT '定向或委培',
"BYSJ" VARCHAR(10 ) NULL COMMENT '毕业时间',
"ZXWYYZDM" VARCHAR(10 ) NULL COMMENT '主修外语语种代码',
"WYDJ" VARCHAR(32 ) NULL COMMENT '外语等级',
"JSJDJ" VARCHAR(32 ) NULL COMMENT '计算机等级',
"LXDZ" VARCHAR(120 ) NULL COMMENT '联系地址',
"YZBM" VARCHAR(20 ) NULL COMMENT '邮政编码',
"SHZW" VARCHAR(120 ) NULL COMMENT '社会职务',
"JYPX" VARCHAR(300 ) NULL COMMENT '教育培训',
"XMSJ" VARCHAR(300 ) NULL COMMENT '项目实践',
"ZGZS" VARCHAR(300 ) NULL COMMENT '资格证书',
"JLJN" VARCHAR(300 ) NULL COMMENT '奖励技能',
"SYBZ1" VARCHAR(300 ) NULL COMMENT '生源备注1',
"SYBZ2" VARCHAR(300 ) NULL COMMENT '生源备注2',
"SYBZ3" VARCHAR(300 ) NULL COMMENT '生源备注3',
"XLDM" VARCHAR(10 ) NULL COMMENT '学历代码',
"ZKZH" VARCHAR(20 ) NULL COMMENT '准考证号',
"GRJL" VARCHAR(2000 ) NULL COMMENT '个人简历',
"SFCJ" VARCHAR(4 ) NULL COMMENT '是否残疾/1是,0否',
"SSCH" VARCHAR(10 ) NULL COMMENT '宿舍床号',
"RZRQ" VARCHAR(10 ) NULL COMMENT '住宿日期',
"ZSJZRQ" VARCHAR(10 ) NULL COMMENT '住宿截止日期',
"QSDH" VARCHAR(20 ) NULL COMMENT '寝室电话',
"YKTH" VARCHAR(20 ) NULL COMMENT '一卡通号',
"YHKH" VARCHAR(20 ) NULL COMMENT '银行卡号',
"XSLB" VARCHAR(30 ) NULL COMMENT '学生类别代码',
"XSLX" VARCHAR(30 ) NULL COMMENT '学生类型代码',
"SFBYS" VARCHAR(2 ) NULL COMMENT '是否毕业生',
"YHDM" VARCHAR(3 ) NULL COMMENT '银行代码',
"HKSHEN" VARCHAR(30 ) NULL COMMENT '户口所在省',
"HKSHI" VARCHAR(30 ) NULL COMMENT '户口所在市',
"HKXIAN" VARCHAR(30 ) NULL COMMENT '户口所在县',
"ZCSXHM" VARCHAR(30 ) NULL COMMENT '注册顺序号码',
"RXQWHCD" VARCHAR(30 ) NULL COMMENT '入学前文化程度',
"XSQRXXBZ" VARCHAR(4 ) DEFAULT '否'  NULL COMMENT '学生确认信息标志',
"DAH" VARCHAR(60 ) NULL COMMENT '档案号',
"YLBXH" VARCHAR(60 ) NULL COMMENT '医疗保险号',
"RXQDWDZ" VARCHAR(200 ) NULL COMMENT '原毕业学院通信地址',
"RXQDWYB" VARCHAR(6 ) NULL COMMENT '原毕业学院邮编',
"RXQDWDH" VARCHAR(20 ) NULL COMMENT '入学前单位电话',
"GZBX" VARCHAR(1000 ) NULL COMMENT '高中表现',
"SFGAT" VARCHAR(4 ) NULL COMMENT '是否港澳台胞',
"SFSSMZ" VARCHAR(4 ) NULL COMMENT '是否少数民簇',
"SFZD" VARCHAR(6 ) NULL COMMENT '是否走读',
"SYDS" VARCHAR(65 ) NULL COMMENT '生源地省',
"SYDSHI" VARCHAR(64 ) NULL COMMENT '生源地市',
"SYDX" VARCHAR(64 ) NULL COMMENT '生源地县',
"BYZH" VARCHAR(30 ) NULL COMMENT '毕业证号',
"XJH" VARCHAR(40 ) NULL COMMENT '学籍号',
"JRZZMMRQ" VARCHAR(24 ) NULL COMMENT '加入政治面貌日期',
"SFHQ" VARCHAR(2 ) NULL COMMENT '是否华侨',
"CSDS" VARCHAR(64 ) NULL COMMENT '',
"CSDSHI" VARCHAR(64 ) NULL COMMENT '',
"CSDXIAN" VARCHAR(64 ) NULL COMMENT '',
"ZD1" VARCHAR(1000 ) NULL COMMENT '扩展字段1',
"ZD2" VARCHAR(1000 ) NULL COMMENT '扩展字段2',
"ZD3" VARCHAR(1000 ) NULL COMMENT '扩展字段3',
"ZD4" VARCHAR(1000 ) NULL COMMENT '扩展字段4',
"ZD5" VARCHAR(1000 ) NULL COMMENT '扩展字段5',
"XJLBDM" VARCHAR(20 ) NULL COMMENT '学籍类别代码',
"SFXYQGZX" VARCHAR(2 ) NULL COMMENT '是否需要勤工助学(1:是,2:否)',
"XGYX" VARCHAR(1000 ) NULL COMMENT '相关意向',
"SFSFS" VARCHAR(10 ) NULL COMMENT '是否师范生',
"QTYY" VARCHAR(50 ) NULL COMMENT '其他原因',
"TBSJ" VARCHAR(40 ) NULL COMMENT '投保时间',
"BXXZ" VARCHAR(40 ) NULL COMMENT '险种',
"SFTB" VARCHAR(10 ) NULL COMMENT '是否投保',
"SFYQRZS" VARCHAR(10 ) NULL COMMENT '是否有确认证书',
"ZD6" VARCHAR(1000 ) NULL  COMMENT '扩展字段6'
)DEFAULT CHARSET=utf8 COMMENT '学生信息表';
