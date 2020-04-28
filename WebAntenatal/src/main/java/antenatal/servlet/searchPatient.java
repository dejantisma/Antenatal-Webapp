package antenatal.servlet;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.usm.cos420.consultingregister.service.search.*;
import edu.usm.cos420.consultingregister.domain.*;


@WebServlet("/searchPatient")
public class searchPatient extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{


        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String nhis = request.getParameter("nhis");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");




        try {
            long nhisLong = Long.parseLong(nhis); 
            out.println("Checking database for.. "+lastName+", "+firstName);
            //          
            //            String[] arr = getPatient(nhis, firstName, lastName);
            //            if(arr == null) {
            //                response.sendRedirect("patientNotFound.jsp");
            //
            //            }

            if(firstName.equals("First") && lastName.equals("Last")) {
                request.setAttribute("firstName", firstName);
                request.setAttribute("lastName", lastName);
                request.setAttribute("gender", "Female");
                request.setAttribute("age", 45);
                request.setAttribute("parity", 1);
                //address
                //tribe

                request.setAttribute("parity", 1);
                request.setAttribute("height", 160);
                request.setAttribute("weight", 60);

                //bloodgroup
                //vdl
                //gestation
                request.setAttribute("preTest", true);
                request.setAttribute("postTest", false);


                getServletContext().getRequestDispatcher("/patientInfo.jsp").forward(request, response);

                //  response.sendRedirect(location);

            }else {
                response.sendRedirect("patientNotFound.jsp");
            }


        }catch(Exception e) {

            e.printStackTrace();
            response.sendRedirect("indexInvalid.jsp");

        }




    }

    private String[] getPatient(String nhis, String firstName, String lastName) {

        //TODO: Query the database with parameters and retrieve patient information. Return this information in an 
        // array for now but subject to change to return a Patient (ConsultingRegister dependency I couldn't get working).
        // return null if not found

        /*
         * dao.get() or service.get() or find(), etc.
         * 
         */


        return null;


    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{


        doGet(request, response);



    }

}