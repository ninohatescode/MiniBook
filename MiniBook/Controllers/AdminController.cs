using MiniBook.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MiniBook.Controllers
{
    public class AdminController : Controller
    {
        BOOKSTOREEntities db=new BOOKSTOREEntities();
        // GET: Admin
        public ActionResult Index()
        {
            if (Session["Admin"] == null)
                return RedirectToAction("Login","Admin");
            return View();
        }
        [HttpGet]
        public ActionResult Login()
        {
            return View();  
        }
        [HttpPost]
        public ActionResult Login(QUANLI admin)
        {
            if (ModelState.IsValid)
            {
                //Kiểm tra có admin này hay chưa
                var adminDB = db.QUANLIs.FirstOrDefault(ad => ad.TenTaiKhoan ==admin.TenTaiKhoan && ad.MatKhau == admin.MatKhau);
                if (adminDB == null)
                    ModelState.AddModelError(string.Empty, "Tên đăng nhập hoặc mật khẩu không đúng");
                else
                {
                    Session["Admin"] = adminDB;
                    Session["AdminName"] = adminDB.TenTaiKhoan;
                    ViewBag.ThongBao = "Đăng nhập admin thành công";
                    return RedirectToAction("Index", "Admin");
                }
            }
            return View();
        }
        public ActionResult Logout()
        {
            Session.Abandon();
            return RedirectToAction("Login");
        }



    }
}