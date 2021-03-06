package com.corner.camp.member.controller;

import com.corner.action.ActionForward;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "MemberFrontController", value = "/")
public class MemberFrontController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doProcess(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doProcess(req, resp);
    }

    protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String requestURI = req.getRequestURI();
        String contextPath = req.getContextPath();
        String command = requestURI.substring(contextPath.length());
        System.out.println("uri "+requestURI);
        ActionForward forward = null;

        if(command.equals("/MemberJoin.me")){
            try {
                forward = new ActionForward();
                forward.setRedirect(false);
                forward.setPath("./user/join.jsp");

            } catch (Exception e) {;}
        } else if (command.equals("/MemberJoinAction.me")) {
            try {
                forward = new MemberJoinAction().execute(req, resp);
            } catch (Exception e) {;}
        } else if ( command.equals("/MainForm.me")) {
            try {
                forward = new ActionForward();
                forward.setRedirect(false);
                forward.setPath("./index.jsp");
            } catch (Exception e) {;}
        } else if ( command.equals("/MemberCheckId.me")) {
            try {
                System.out.println("checkId test");
                forward = new MemberCheckIdAction().execute(req, resp);
            } catch (Exception e) {;}
        } else if ( command.equals("/MemberLogin.me")) {
            forward = new ActionForward();
            forward.setRedirect(false);
            forward.setPath("./user/login.jsp");
        } else if (command.equals("/MemberLoginAction.me")){
            try {
                forward = new MemberLoginAction().execute(req,resp);
            } catch (Exception e) {;}
        }else {
            forward = new ActionForward();
            forward.setRedirect(false);
            forward.setPath("/404error.jsp");
        }

        if(forward != null ) {
            if(forward.isRedirect()){
                resp.sendRedirect(forward.getPath());
            } else {
                RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
                dispatcher.forward(req, resp);
            }
        }


    }


}