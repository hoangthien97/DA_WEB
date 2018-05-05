using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NoodStore.Models;

namespace NoodStore.Controllers
{
    public class GiohangController : Controller
    {
        DbNoodStoreDataContext data = new DbNoodStoreDataContext();
        // GET: Giohang
        public List<Giohang> Laygiohang()
        {
            List<Giohang> lstGiohang = Session["Giohang"] as List<Giohang>;
            if (lstGiohang == null)
            {
                lstGiohang = new List<Giohang>();
                Session["Giohang"] = lstGiohang;
            }
            return lstGiohang;
        }
        //Them hang vao gio
        public ActionResult Themgiohang(int sMaSP, String strURL)
        {
            List<Giohang> lstGiohang = Laygiohang();
            Giohang sanpham = lstGiohang.Find(n => n.sMaSP == sMaSP);
            if (sanpham == null)
            {
                sanpham = new Giohang(sMaSP);
                lstGiohang.Add(sanpham);
                return Redirect(strURL);
            }
            else
            {
                sanpham.iSoluong++;
                return Redirect(strURL);
            }
        }
        //Tong so luong
        private int TongSL()
        {
            int iTongSL = 0;
            List<Giohang> lstGiohang = Session["Giohang"] as List<Giohang>;
            if (lstGiohang != null)
            {
                iTongSL = lstGiohang.Sum(n => n.iSoluong);
            }
            return iTongSL;
        }
        //Thanh toan
        private decimal Tongtien()
        {
            decimal iTongtien = 0;
            List<Giohang> lstGiohang = Session["Giohang"] as List<Giohang>;
            if (lstGiohang != null)
            {
                iTongtien = lstGiohang.Sum(n => n.dThanhtien);
            }
            return iTongtien;
        }
        

        //xay dung trang gio hang
        public ActionResult Giohang()
        {
            List<Giohang> lstGiohang = Laygiohang();
            if (lstGiohang.Count == 0)
            {
                return RedirectToAction("Index", "Home");
            }
            ViewBag.TongSL = TongSL();
            ViewBag.Tongtien = Tongtien();
            return View(lstGiohang);
        }
        //Tao partial View de hien thi thong tin gio hang
        public ActionResult GiohangPartial()
        {
            ViewBag.TongSL = TongSL();
            ViewBag.Tongtien = Tongtien();
            return PartialView();
        }
        //Xoa gio hang
        public ActionResult XoaGiohang(int sMasp)
        {
            //Lay gio hang tu session
            List<Giohang> lstGiohang = Laygiohang();
            //Ktra sach co trong session Giohang
            Giohang sanpham = lstGiohang.SingleOrDefault(n => n.sMaSP == sMasp);
            if (sanpham != null)
            {
                lstGiohang.RemoveAll(n => n.sMaSP == sMasp);
                return RedirectToAction("Giohang");
            }
            if (lstGiohang.Count == 0)
            {
                return RedirectToAction("Index", "Home");
            }
            return RedirectToAction("Giohang");
        }
        //Cap nhat gio hang
        public ActionResult CapnhatGiohang(int sMasp, FormCollection f)
        {
            List<Giohang> lstGiohang = Laygiohang();
            Giohang sanpham = lstGiohang.SingleOrDefault(n => n.sMaSP == sMasp);
            if (sanpham != null)
            {
                sanpham.iSoluong = int.Parse(f["txtSL"].ToString());
            }
            return RedirectToAction("Giohang");
        }
        //Xoa tat ca gio hang
        public ActionResult XoatatcaGiohang()
        {
            List<Giohang> lstGiohang = Laygiohang();
            lstGiohang.Clear();
            return RedirectToAction("Index", "Home");
        }
        //dat hang
        [HttpGet]
        public ActionResult DatHang()
        {
            if (Session["Taikhoan"] == null || Session["Taikhoan"].ToString() == "")
            {
                return RedirectToAction("Dangnhap", "Users");
            }
            if (Session["Giohang"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            //lay gio hoang tu session
            List<Giohang> lstGiohang = Laygiohang();
            ViewBag.TongSL = TongSL();
            ViewBag.Tongtien = Tongtien();
            return View(lstGiohang);
        }
        [HttpPost]
        public ActionResult DatHang(FormCollection collection)
        {
            //thêm đơn hàng
            DONDATHANG ddh = new DONDATHANG();
            THANHTOAN tt = new THANHTOAN();
            KHACHHANG kh = (KHACHHANG)Session["Taikhoan"];
            List<Giohang> gh = Laygiohang();
            ddh.MaKH = kh.MaKH;
            ddh.Ngaydat = DateTime.Now;
            var ngaygiao = String.Format("{0:MM/dd/yyyy}", collection["Ngaygiao"]);
            ddh.Ngaygiao = DateTime.Parse(ngaygiao);
            ddh.Hinhthucthanhtoan = false;
            ddh.Tinhtranggiaohang = false;
            ddh.Tinhtrangthanhtoan = false;
            data.DONDATHANGs.InsertOnSubmit(ddh);
            data.SubmitChanges();

            tt.MaDDH = ddh.MaDDH;
            tt.THANHTIEN = Tongtien();
            data.THANHTOANs.InsertOnSubmit(tt);
            //thêm chi tiết đơn hàng
            foreach (var item in gh)
            {
                CHITIETDONTHANG ctdh = new CHITIETDONTHANG();
                ctdh.MaDDH = ddh.MaDDH;
                ctdh.MaSP = item.sMaSP;
                ctdh.Soluong = item.iSoluong;
                ctdh.GiaSP = (decimal)item.dGiaSP;
                data.CHITIETDONTHANGs.InsertOnSubmit(ctdh);
            }
            data.SubmitChanges();
            Session["Giohang"] = null;
            return RedirectToAction("Thanhtoan", "Giohang", new { id = tt.MaDDH });
        }

        //xác nhận đơn hàng
        public ActionResult Xacnhandonhang()
        {
            return View();
        }
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Thanhtoan(int id)
        {
            var thanhtoan = from tt in data.THANHTOANs
                            where tt.MaDDH == id
                            select tt;
            return View(thanhtoan.Single());
        }
    }
}