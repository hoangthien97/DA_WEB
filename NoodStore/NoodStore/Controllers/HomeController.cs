using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NoodStore.Models;

using PagedList;
using PagedList.Mvc;

namespace NoodStore.Controllers
{    
    public class HomeController : Controller
    {
        DbNoodStoreDataContext data = new DbNoodStoreDataContext();
        private List<SANPHAM> Layspmoi(int count,string loai)
        {
            return data.SANPHAMs.OrderByDescending(a => a.MaLSP ==loai).Take(count).ToList();
        }
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult SP_1()
        {
            var spmoi =(from sp in data.SANPHAMs where sp.MaLSP=="CPU" select sp).Take(5);
            return PartialView(spmoi);
        }
        public ActionResult SP_2()
        {
            var spmoi = (from sp in data.SANPHAMs where sp.MaLSP == "BP" select sp).Take(5);
            return PartialView(spmoi);
        }
        public ActionResult SP_3()
        {
            var spmoi = (from sp in data.SANPHAMs where sp.MaLSP == "CH" select sp).Take(5);
            return PartialView(spmoi);
        }
        public ActionResult Details(int id)
        {
            var spmoi = from s in data.SANPHAMs where s.MaSP == id select s;
            return View(spmoi.Single());
        }
   }
}