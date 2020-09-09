package cn.com.xuxiaowei.his.dict.service.impl;

import cn.com.xuxiaowei.his.dict.entity.Sex;
import cn.com.xuxiaowei.his.dict.mapper.SexMapper;
import cn.com.xuxiaowei.his.dict.service.ISexService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 个人基本信息分类与代码 第1部分:人的性别代码，参见：http://openstd.samr.gov.cn/bzgk/gb/newGbInfo?hcno=0FC942D542BC6EE3C707B2647EF81CD8 服务实现类
 * </p>
 *
 * @author 徐晓伟
 * @since 2020-09-05
 */
@Service
public class SexServiceImpl extends ServiceImpl<SexMapper, Sex> implements ISexService {

}
