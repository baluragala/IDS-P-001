using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IPAPPM.Web.Api.Models
{
    public class UserQuestion
    {
        public String Question { get; set; }
        public String Answer { get; set; }
        public int UserId { get; set; }

        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();
        public void SaveQuestion(UserQuestion userQuestion)
        {
            tbl_UserQuestions entity = new tbl_UserQuestions
            {
               CreatedBy="mobile",
               CreatedDate = DateTime.Now,
               Question = userQuestion.Question,
               UserId = userQuestion.UserId
            };

            db.tbl_UserQuestions.AddObject(entity);
            db.SaveChanges();
        }

        public List<UserQuestion> GeUserQuestions(DateTime fromTime)
        {

            List<UserQuestion> userQuestions;
            userQuestions = (from c in db.tbl_UserQuestions
                       where c.ModifiedDate >= fromTime && c.Answer.Trim() != null
                             select new UserQuestion
                       {
                           Question = c.Question,
                           Answer = c.Answer,
                           UserId = c.UserId
                       }).ToList();
            return userQuestions;
        }
    }
}