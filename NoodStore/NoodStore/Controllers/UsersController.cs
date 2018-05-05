using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NoodStore.Models;

namespace NoodStore.Controllers
{
    public class UsersController : Controller
    {
        DbNoodStoreDataContext data = new DbNoodStoreDataContext();
        // GET: Users
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Dangky()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Dangky(FormCollection collection, KHACHHANG kh)
        {
            var ho = collection["Ho"];
            var ten = collection["Ten"];
            var tendn = collection["Taikhoan"];
            var matkhau = collection["MK"];
            var diachi = collection["DiachiKH"];
            var email = collection["Email"];
            var dienthoai = collection["DienthoaiKH"];
            var ngaysinh = String.Format("{0:MM/dd/yyyy}", collection["Ngaysinh"]);
            if (String.IsNullOrEmpty(ho))
            {
                ViewData["loi1"] = "Họ khách hàng không được để trống";
            }
            else if (String.IsNullOrEmpty(ten))
            {
                ViewData["loi2"] = "Tên khách hàng không được để trống";
            }
            else if (String.IsNullOrEmpty(tendn))
            {
                ViewData["loi3"] = "Tên đăng nhập không được để trống";
            }
            else if (String.IsNullOrEmpty(matkhau))
            {
                ViewData["loi4"] = "Mật khẩu không được để trống";
            }
            if (String.IsNullOrEmpty(email))
            {
                ViewData["loi5"] = "Email không được để trống";
            }
            if (String.IsNullOrEmpty(dienthoai))
            {
                ViewData["loi6"] = "Điện thoại không được để trống";
            }
            else
            {
                kh.Ho = ho;
                kh.Ten = ten;
                kh.Taikhoan = tendn;
                kh.MK = matkhau;
                kh.Email = email;
                kh.DiachiKH = diachi;
                kh.DienthoaiKH = dienthoai;
                kh.Ngaysinh = DateTime.Parse(ngaysinh);
                data.KHACHHANGs.InsertOnSubmit(kh);
                data.SubmitChanges();
                return RedirectToAction("Dangnhap");
            }
            return this.Dangky();
        }

        public ActionResult Dangnhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Dangnhap(FormCollection collection)
        {
            var tendn = collection["Taikhoan"];
            var matkhau = collection["MK"];
            if (String.IsNullOrEmpty(tendn))
            {
                ViewData["loi1"] = "Tên đăng nhập không được để trống";
            }
            else if (String.IsNullOrEmpty(matkhau))
            {
                ViewData["loi2"] = "Mật khẩu không được để trống";
            }
            else
            {
                //gán giá trị cho đối tượng được tạo mới 
                KHACHHANG kh = data.KHACHHANGs.SingleOrDefault(n => n.Taikhoan == tendn && n.MK == matkhau);
                if (kh != null)
                {
                    ViewBag.Thongbao = "Đăng nhập thành công";
                    Session["Taikhoan"] = kh;
                    return RedirectToAction("Index", "Home");
                }
                else
                    ViewBag.Thongbao = "Tên đăng nhập hoặc mật khẩu không đúng";
            }
            return View();
        }
    }
}