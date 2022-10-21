package com.iu.home.board.qna;

import org.aopalliance.intercept.Joinpoint;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import lombok.extern.java.Log;
import lombok.extern.slf4j.Slf4j;

@Component
@Aspect
@Slf4j
public class QnaAdvice {

	@Before("execution(* com.iu.home.board.qna.QnaService.get*(..))")
	public void beforeTest(JoinPoint joinpoint) {

		log.info("======================before================");
		log.info("Args {}",joinpoint.getArgs());
		log.info("kind {}",joinpoint.getKind());

		log.info("======================after================");
	}
	
	
		
	@Around("execution(* com.iu.home.board.qna.QnaService.add*(..))")
	public Object aroundTest(ProceedingJoinPoint joinPoint) throws Throwable{
		
		log.info("======================before================");
		
		
		log.info("Taget {}",joinPoint.getTarget());
		log.info("this {}",joinPoint.getThis());
		log.info("args {}",joinPoint.getArgs());
		
		Object [] objs = joinPoint.getArgs();
		QnaVO qnaVO = (QnaVO) objs[0];
		
		
		Object obj;
		
			obj = joinPoint.proceed();
	

		log.info("======================after================");
		log.info("obj {}",obj);
	
	
		return obj;
	
	
	}
	
	
}
