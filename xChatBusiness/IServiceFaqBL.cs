using xChatEntities;

namespace xChatBusiness
{
    public interface IServiceFaqBL
    {
        void Insert(FaqEntity faqEntity);
        void Update(FaqEntity faqEntity);
        void Delete(FaqEntity faqEntity);
        ObjectResultList<FaqEntity> GetListByLanguajeId(int languageId);
        FaqEntity GetById(FaqEntity faqEntity);
    }
}
