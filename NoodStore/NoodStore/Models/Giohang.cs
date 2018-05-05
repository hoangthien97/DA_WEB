using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NoodStore.Models
{
    public class Giohang
    {
        DbNoodStoreDataContext data = new DbNoodStoreDataContext();
        public int sMaSP { set; get; }
        public String sTenSP { set; get; }
        public String sAnhSP { set; get; }
        public decimal dGiaSP { set; get; }
        public int iSoluong { set; get; }

        public decimal dThanhtien
        {
            get { return iSoluong * dGiaSP; }
        }

        public Giohang(int MaSP)
        {
            sMaSP = MaSP;
            SANPHAM SP = data.SANPHAMs.Single(n => n.MaSP == sMaSP);
            sTenSP = SP.TenSP;
            sAnhSP = SP.AnhSP;
            dGiaSP = decimal.Parse(SP.GiaSP.ToString());
            iSoluong = 1;
        }
    }
}