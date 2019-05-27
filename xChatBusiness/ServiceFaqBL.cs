using System;
using xChatDAO;
using xChatEntities;

namespace xChatBusiness
{
    public class ServiceFaqBL : IServiceFaqBL
    {
        private IServiceFaqDAO _serviceFaqDAO;

        public ServiceFaqBL(IServiceFaqDAO serviceFaqDAO)
        {
            _serviceFaqDAO = serviceFaqDAO;
        }

        public void Delete(FaqEntity faqEntity)
        {
            throw new NotImplementedException();
        }

        public FaqEntity GetById(FaqEntity faqEntity)
        {
            throw new NotImplementedException();
        }

        public ObjectResultList<FaqEntity> GetListByLanguajeId(int languageId)
        {
            throw new NotImplementedException();
        }

        public void Insert(FaqEntity faqEntity)
        {
            throw new NotImplementedException();
        }

        public void Update(FaqEntity faqEntity)
        {
            throw new NotImplementedException();
        }
    }
}
