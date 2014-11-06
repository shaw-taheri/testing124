using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Skejooler.App_Code
{
    public class Reg_form
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string PreferredDate { get; set; }
        public string PreferredDate2 { get; set; }
        public string SchoolName { get; set; }
        public string SchoolStreet { get; set; }
        public string City { get; set; }
        public string Province { get; set; }
        public string Contact { get; set; }
        public string ContactNum { get; set; }
        public string ContactEmail { get; set; }
        public string CourseNum { get; set; }
        public int MidExam { get; set; }
        public int FinalExam { get; set; }
        public int OnlineExam { get; set; }
        public int PaperExam { get; set; }
        public int ComputerReq { get; set; }
        public string AdditionalReq { get; set; }
        public int FeeCovererd { get; set; }
        public int PostageCovered { get; set; }
        public string AprrovalStatus { get; set; }
        public string AdminComment { get; set; }
    }
}