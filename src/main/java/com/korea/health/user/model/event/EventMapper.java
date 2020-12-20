package com.korea.health.user.model.event;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.korea.health.user.model.event.EventVO;
import com.korea.health.user.model.payment.cardVO2;
import com.korea.health.user.model.payment.payMember;
import com.korea.health.user.model.payment.payment_list;

@Mapper
public interface EventMapper {
List<EventVO> list();
List<EventVO> event2(String en);
List<payMember> user_serch(String id);
void payment_info(@Param("vo2")cardVO2 vo2, @Param("id")String id);
void coupon_delete(@Param("id")String id, @Param("coupon_no")String coupon_no);
void save_up(@Param("id")String id, @Param("save_point")Integer save_point);
List<payment_list>payment_sel(String id);
void payment_del(@Param("pay_no")String pay_no);
void payment_refund_point(@Param("id")String id,@Param("pay_no")String pay_no);
}
