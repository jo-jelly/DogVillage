package team.customer;

import java.util.HashMap;




import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;

@Service("customer_manageradminInsertReg")
public class AdminInsertReg implements Action{

		@Resource
		CustomerMapper mapper;
		
		@Override
		public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

			System.out.println("customer/customerInsert execute() 실행");
			CustomerVO vo = (CustomerVO)map.get("cvo");
			System.out.println("@@@before mapper VO:" +vo);
			mapper.insert(vo);
		
			System.out.println("@@@after mapper VO:" +vo);
			return null;
		}
	
	
}
