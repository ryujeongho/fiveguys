package com.sh.guys.oner.controller;

import com.sh.guys.reservation.model.entity.Reservation;
import com.sh.guys.reservation.model.service.ReservationService;
import com.sh.guys.restaurant.model.entity.Restaurant;
import com.sh.guys.restaurant.model.service.RestaurantService;
import com.sh.guys.oner.model.service.OnerService;
import com.sh.guys.oner.model.vo.OwnerReservationVo;
import com.sh.guys.user.model.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/oner/onerReservationList")
public class OnerReservationListController extends HttpServlet {
    private ReservationService reservationService = new ReservationService();
    private RestaurantService restaurantService = new RestaurantService();

    private OnerService onerService = new OnerService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User no = (User) req.getSession().getAttribute("loginUser");
        String usersNo = no.getNo();

        Restaurant restaurant = restaurantService.findByUsersNo(usersNo);

        String restNo = restaurant.getNo();

        List<Reservation> reservations = reservationService.findByRestNo(restNo);
        System.out.println(reservations);
        req.setAttribute("reservations", reservations);

        // github
        // 1. 사용자 입력값 - 우진
        String no1 = no.getNo();
        System.out.println(no1);

        // 조회
        List<OwnerReservationVo> ownerReservationVo = onerService.findOwnerRestaurant(no1);
        System.out.println(ownerReservationVo);
        req.setAttribute("ownerReservationVo", ownerReservationVo);

        // view단 처리
        // end
        req.getRequestDispatcher("/WEB-INF/views/oner/onerReservationList.jsp").forward(req, resp);
    }
}