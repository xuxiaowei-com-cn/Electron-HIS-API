package cn.com.xuxiaowei.his.dict;

import cn.com.xuxiaowei.his.dict.entity.Sex;
import cn.com.xuxiaowei.his.dict.service.ISexService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * 个人基本信息分类与代码 第1部分:人的性别代码，参见：http://openstd.samr.gov.cn/bzgk/gb/newGbInfo?hcno=0FC942D542BC6EE3C707B2647EF81CD8 服务类 测试类
 *
 * @author xuxiaowei
 * @since 0.0.1
 */
@Slf4j
@SpringBootTest
class ISexServiceTests {

    @Autowired
    private ISexService iSexService;

    @Test
    void getById() {
        Sex byId = iSexService.getById(1);
        log.info(String.valueOf(byId));
    }

}
