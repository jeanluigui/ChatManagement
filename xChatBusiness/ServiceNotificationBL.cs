namespace xChatBusiness
{
    public class ServiceNotificationBL : IServiceNotification
    {
        public void Send((string from, string to, string subject, string body) notifyParam)
        {
            
        }
    }

    public interface IServiceNotification
    {
        void Send((string from, string to, string subject, string body) notifyParam);
    }
}
