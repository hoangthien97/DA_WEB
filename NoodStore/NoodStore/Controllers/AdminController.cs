using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;
using System.IO;
using NoodStore.Models;

namespace NoodStore.Controllers
{
    public class AdminController : Controller
    {
        DbNoodStoreDataContext data = new DbNoodStoreDataContext();
        // GET: Admin
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login(string username, string password)
        {
            if (String.IsNullOrEmpty(username))
            {
                ViewData["Loi1"] = "Phải nhập tên đăng nhập";
            }
            else if (String.IsNullOrEmpty(password))
            {
                ViewData["Loi2"] = "Phải nhập mật khẩu";
            }
            else
            {
                admin ad = data.admins.SingleOrDefault(n => n.UserAdmin == username && n.PassAdmin == password);
                if (ad != null)
                {
                    //ViewBag.Thongbao = "Chúc mừng đăng nhập thành công";
                    Session["Taikhoanadmin"] = ad;
                    return RedirectToAction("Index", "Admin");
                }
                else
                    ViewBag.Thongbao = "Tên đăng nhập hoặc mật khẩu không đúng";
            }
            return View();
        }

        public ActionResult Sanpham(int? page)
        {
            int PageSize = 7;
            int PageNum = (page ?? 1);

            return View(data.SANPHAMs.ToList().OrderBy(n => n.MaSP).ToPagedList(PageNum, PageSize));
        }
        [HttpGet]
        public ActionResult Sanpham_Create()
        {
            ViewBag.MaLSP = new SelectList(data.CHITIETPHANLOAITHIETBIs.ToList().OrderBy(n => n.LoaiTB), "MaLSP", "LoaiTB");
            ViewBag.MaKieu = new SelectList(data.CHITIETPHANLOAIs.ToList().OrderBy(n => n.TenKieu), "MaKieu", "TenKieu");
            ViewBag.MaNSX = new SelectList(data.NHASANXUATs.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Sanpham_Create(SANPHAM sanpham, HttpPostedFileBase fileupload)
        {
            ViewBag.MaLSP = new SelectList(data.CHITIETPHANLOAITHIETBIs.ToList().OrderBy(n => n.LoaiTB), "MaLSP", "LoaiTB");
            ViewBag.MaKieu = new SelectList(data.CHITIETPHANLOAIs.ToList().OrderBy(n => n.TenKieu), "MaKieu", "TenKieu");
            ViewBag.MaNSX = new SelectList(data.NHASANXUATs.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
            if (fileupload == null)
            {
                ViewBag.ThongBao = "Vui lòng chọn hình ảnh!!";
            }
            else if (ModelState.IsValid)
            {
                var fileName = Path.GetFileName(fileupload.FileName);
                var path = Path.Combine(Server.MapPath("~/Hinhsanpham"), fileName);
                if (System.IO.File.Exists(path))
                {
                    ViewBag.ThongBao = "Hình ảnh đã tồn tại";
                }
                else
                {
                    fileupload.SaveAs(path);
                }
                sanpham.AnhSP = fileName;
                data.SANPHAMs.InsertOnSubmit(sanpham);
                data.SubmitChanges();
            }
            return RedirectToAction("Sanpham");
        }
        public ActionResult Details(int id)
        {
            SANPHAM sanpham = data.SANPHAMs.SingleOrDefault(n => n.MaSP == id);
            ViewBag.MaSanPham = sanpham.MaSP;
            if (sanpham == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(sanpham);
        }
        [HttpGet]
        public ActionResult Delete(int id)
        {
            
            SANPHAM sanpham = data.SANPHAMs.SingleOrDefault(n => n.MaSP == id);
            ViewBag.MaSanPham = sanpham.MaSP;
            if (sanpham == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(sanpham);
        }

        [HttpPost, ActionName("Delete")]
        public ActionResult AcceptDelete(int id)
        {
            
            SANPHAM sanpham = data.SANPHAMs.SingleOrDefault(n => n.MaSP == id);
            ViewBag.MaSanPham = sanpham.MaSP;
            if (sanpham == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            data.SANPHAMs.DeleteOnSubmit(sanpham);
            data.SubmitChanges();
            return RedirectToAction("Sanpham");
        }
        [HttpGet]
        public ActionResult SP_Edit(int id)
        {
            SANPHAM sanpham = data.SANPHAMs.SingleOrDefault(n => n.MaSP == id);
            ViewBag.MaSanPham = sanpham.MaSP;
            if (sanpham == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            ViewBag.MaLSP = new SelectList(data.CHITIETPHANLOAITHIETBIs.ToList().OrderBy(n => n.LoaiTB), "MaLSP", "LoaiTB");
            ViewBag.MaKieu = new SelectList(data.CHITIETPHANLOAIs.ToList().OrderBy(n => n.TenKieu), "MaKieu", "TenKieu");
            ViewBag.MaNSX = new SelectList(data.NHASANXUATs.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
            return View(sanpham);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult SP_Edit(SANPHAM sanpham, HttpPostedFileBase fileUpload)
        {
            ViewBag.MaLSP = new SelectList(data.CHITIETPHANLOAITHIETBIs.ToList().OrderBy(n => n.LoaiTB), "MaLSP", "LoaiTB");
            ViewBag.MaKieu = new SelectList(data.CHITIETPHANLOAIs.ToList().OrderBy(n => n.TenKieu), "MaKieu", "TenKieu");
            ViewBag.MaNSX = new SelectList(data.NHASANXUATs.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
            if (fileUpload == null)
            {
                ViewBag.Thongbao = "Vui lòng chọn sản phẩm";
                return View();
            }
            else
            {
                if (ModelState.IsValid)
                {
                    var fileName = Path.GetFileName(fileUpload.FileName);
                    var path = Path.Combine(Server.MapPath("~/Hinhsanpham"), fileName);
                    if (System.IO.File.Exists(path))
                        ViewBag.Thongbao = "Hình ảnh đã tồn tại";
                    else
                    {
                        fileUpload.SaveAs(path);
                    }
                    sanpham.AnhSP = fileName;
                    UpdateModel(sanpham);
                    data.SubmitChanges();
                }
                return RedirectToAction("Sanpham");
            }
           
        }
    }
}