package cn.com.xuxiaowei.his.framework.service.impl;

import cn.com.xuxiaowei.his.framework.entity.StaffInfo;
import cn.com.xuxiaowei.his.framework.mapper.StaffInfoMapper;
import cn.com.xuxiaowei.his.framework.service.IStaffInfoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 员工表 服务实现类
 * </p>
 *
 * @author 徐晓伟
 * @since 2020-09-09
 */
@Service
public class StaffInfoServiceImpl extends ServiceImpl<StaffInfoMapper, StaffInfo> implements IStaffInfoService {

}
