package com.korea.health.user.model.event;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.korea.health.user.model.event.EventVO;
import com.korea.health.user.model.payment.CardVO2;
import com.korea.health.user.model.payment.PayMember;
import com.korea.health.user.model.payment.Payment_List;

@Mapper
public interface EventMapper {
List<EventVO> list();
List<EventVO> event2(String en);
List<PayMember> user_serch(String id);
void payment_info(@Param("vo2")CardVO2 vo2, @Param("id")String id);
void payment_result(@Param("vo2")CardVO2 vo2, @Param("id")String id);
void userCntAdd(@Param("vo2")CardVO2 vo2, @Param("id")String id);
void branchPayAdd(@Param("vo2")CardVO2 vo2, @Param("id")String id);
void coupon_delete(@Param("id")String id, @Param("coupon_no")String coupon_no);
void save_up(@Param("id")String id, @Param("save_point")Integer save_point);
List<Payment_List>payment_sel(String id);
void payment_del(Payment_List pl);
void newNum(Payment_List pl);
void paymentResult_del(Payment_List pl);
void newNum2(Payment_List pl);
void clearCnt(Payment_List pl);
void branchPayDel(Payment_List pl);
Payment_List payList(String payment_no);
void payment_refund_point(@Param("id")String id,@Param("pay_no")String pay_no);
}
