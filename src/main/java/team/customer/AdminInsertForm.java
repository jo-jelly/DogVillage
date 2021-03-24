package team.customer;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("customer_manageradminInsertForm")
public class AdminInsertForm implements Action{


		@Override
		public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

			System.out.println("customer/customerInsertForm execute() 실행");

			return null;
		}
	
	
}
