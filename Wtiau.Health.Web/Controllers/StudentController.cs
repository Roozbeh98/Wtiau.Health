﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Linq.Dynamic;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.IO;
using Wtiau.Health.Web.Models.Domian;
using Wtiau.Health.Web.Models.Plugins;
using Wtiau.Health.Web.Models.ViewModels;

namespace Wtiau.Health.Web.Controllers
{
    [Authorize(Roles = "Admin,SuperAdmin,DataEntry")]
    public class StudentController : Controller
    {
        HealthEntities db = new HealthEntities();

        [HttpGet]
        public ActionResult Index()
        {

            var _student = db.Tbl_Student.Where(x => x.Student_IsDelete == false).Select(x => new Model_StudentList
            {
                ID = x.Student_ID,
                Student_Code = x.Student_Code,
                Student_National = x.Student_NationalCode,
                Student_Form1 = x.Student_Form1,
                Student_Form2 = x.Student_Form1,
                Student_Turn = x.Student_TakeTurn,
                Student_Name = x.Student_SIID.HasValue ? "نا معلوم" : x.Tbl_StudentInfo.SI_Name,
                Student_Family = x.Student_SIID.HasValue ? "نا معلوم" : x.Tbl_StudentInfo.SI_Family,
                Student_Info = x.Student_SIID.HasValue

            }).ToList();

            return View(_student);
        }


        public ActionResult ImportStudentFromExcel()
        {

            Microsoft_Excel excel = new Microsoft_Excel(@"C:\2.xlsx");



            excel.Open(1);
            int row_count = excel.Get_RowCount();
            string[,] ex = excel.Get_Range(1, 1, row_count, 2);
            excel.Close();

            for (int i = 0; i < row_count; i++)
            {

                Tbl_Student _Student = new Tbl_Student()
                {
                    Student_Code = ex[i, 0],
                    Student_NationalCode = ex[i, 1],
                    Student_Guid = Guid.NewGuid()
                };

                db.Tbl_Student.Add(_Student);

            }


            if (Convert.ToBoolean(db.SaveChanges() > 0))
            {
                TempData["TosterState"] = "success";
                TempData["TosterType"] = TosterType.Maseage;
                TempData["TosterMassage"] = "ثبت نام با موفقیت انجام شده";
                return View();
            }
            else
            {
                TempData["TosterState"] = "error";
                TempData["TosterType"] = TosterType.Maseage;
                TempData["TosterMassage"] = "خطا";
                return View();
            }
        }

        [HttpPost]
        public ActionResult GetStudents()
        {
            int start = Convert.ToInt32(Request["start"]);
            int length = Convert.ToInt32(Request["length"]);
            string searchValue = Request["search[value]"];
            string sortColumnName = Request["columns[" + Request["order[0][column]"] + "][name]"];
            string sortDirection = Request["order[0][dir]"];

            var _student = db.Tbl_Student.Where(x => x.Student_IsDelete == false).Select(x => new Model_StudentList
            {
                ID = x.Student_ID,
                Student_Code = x.Student_Code,
                Student_National = x.Student_NationalCode,
                Student_Form1 = x.Student_Form1,
                Student_Form2 = x.Student_Form1,
                Student_Turn = x.Student_TakeTurn,
                Student_Name = x.Student_SIID.HasValue ? "نا معلوم" : x.Tbl_StudentInfo.SI_Name,
                Student_Family = x.Student_SIID.HasValue ? "نا معلوم" : x.Tbl_StudentInfo.SI_Family,
                Student_Info = x.Student_SIID.HasValue

            }).ToList();

            int totalRows = _student.Count;

            if (!string.IsNullOrEmpty(searchValue))
            {
                _student = _student.Where(x => x.ID.ToString().ToLower().Contains(searchValue.ToLower()) ||
                                               x.Student_Code.ToLower().Contains(searchValue.ToLower()) ||
                                               x.Student_National.ToLower().Contains(searchValue.ToLower()) ||
                                               x.Student_Form1.ToString().ToLower().Contains(searchValue.ToLower()) ||
                                               x.Student_Form2.ToString().ToLower().Contains(searchValue.ToLower()) ||
                                               x.Student_Turn.ToString().ToLower().Contains(searchValue.ToLower()) ||
                                               (string.IsNullOrEmpty(x.Student_Name) ? false : x.Student_Name.ToLower().Contains(searchValue.ToLower())) ||
                                               (string.IsNullOrEmpty(x.Student_Family) ? false : x.Student_Family.ToLower().Contains(searchValue.ToLower())) ||
                                               x.Student_Info.ToString().ToLower().Contains(searchValue.ToLower())).ToList();
            }

            int totalRowsAfterFiltering = _student.Count;

            _student = _student.OrderBy(sortColumnName + " " + sortDirection).ToList();

            _student = _student.Skip(start).Take(length).ToList();

            return Json(new { data = _student, draw = Request["draw"], recordsTotal = totalRows, recordsFiltered = totalRowsAfterFiltering }, JsonRequestBehavior.AllowGet);
        }

    }
}