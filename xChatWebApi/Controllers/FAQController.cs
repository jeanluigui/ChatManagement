using System;
using System.Web.Http;
using xChatBusiness;
using xChatEntities;

namespace xChatWebApi.Controllers
{
    /// <summary>
    /// Controlador para gestionar los FAQ.
    /// </summary>
    public class FAQController : ApiController
    {
        private IServiceFaqBL _serviceFaqBL;

        /// <summary>
        /// Constructor predeterminado.
        /// </summary>
        /// <param name="serviceFaqBL"></param>
        public FAQController(IServiceFaqBL serviceFaqBL)
        {
            _serviceFaqBL = serviceFaqBL;
        }

        /// <summary>
        /// Elimina un registro.
        /// </summary>
        /// <param name="faqEntity"></param>
        public ObjectResult<bool> Delete(FaqEntity faqEntity)
        {
            ObjectResult<bool> result = new ObjectResult<bool>();

            try
            {
                _serviceFaqBL.Delete(faqEntity);
                result.Data = true;
            }
            catch(Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        /// <summary>
        /// Obtiene un FAQ a partir de su ID.
        /// </summary>
        /// <param name="faqEntity"></param>
        /// <returns></returns>
        public ObjectResult<FaqEntity> GetById(FaqEntity faqEntity)
        {
            ObjectResult<FaqEntity> result = new ObjectResult<FaqEntity>();

            try
            {
                result.Data = _serviceFaqBL.GetById(faqEntity);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        /// <summary>
        /// Obtiene una lista de Faq por el ID del Lenguaje.
        /// </summary>
        /// <param name="languageId"></param>
        /// <returns></returns>
        public ObjectResultList<FaqEntity> GetListByLanguajeId(int languageId)
        {
            ObjectResultList<FaqEntity> result = new ObjectResultList<FaqEntity>();

            try
            {
                result = _serviceFaqBL.GetListByLanguajeId(languageId);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        /// <summary>
        /// Crea un nuevo Faq.
        /// </summary>
        /// <param name="faqEntity"></param>
        public ObjectResult<bool> Insert(FaqEntity faqEntity)
        {
            ObjectResult<bool> result = new ObjectResult<bool>();

            try
            {
                _serviceFaqBL.Insert(faqEntity);
                result.Data = true;
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        /// <summary>
        /// Actualiza un Faq.
        /// </summary>
        /// <param name="faqEntity"></param>
        public ObjectResult<bool> Update(FaqEntity faqEntity)
        {
            ObjectResult<bool> result = new ObjectResult<bool>();

            try
            {
                _serviceFaqBL.Insert(faqEntity);
                result.Data = true;
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }
    }
}
