using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IPAPPM.Web.Api.Models
{
    public class Notification
    {
        public int NotificationId { get; set; }
        public String Message { get; set; }
        public int UserNotificationId { get; set; }

        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();
        public List<Notification> GetUserNotifications(int userId)
        {
            List<Notification> notifications;
            List<tbl_UserNotifications> userNotifications;
            userNotifications = (from c in db.tbl_UserNotifications
                                 where c.UserId == userId
                                 select c).ToList();

            notifications = (from c in db.tbl_Notifications
                             join d in userNotifications
                             on c.Notification_Id equals d.Notification_Id                            
                             into cd
                             from e in cd.DefaultIfEmpty()
                             select new Notification
                           {
                             Message = c.Message,
                             NotificationId = c.Notification_Id

                           }).ToList();

            return notifications;

        }

        public void MarkNotificatoinAsRead(int notificationId,int userId)
        {
            tbl_UserNotifications entity = new tbl_UserNotifications
            {
                UserId = userId,
                Notification_Id = NotificationId
            };

            db.tbl_UserNotifications.AddObject(entity);
            db.SaveChanges();
        }
    }
}