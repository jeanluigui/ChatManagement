using Newtonsoft.Json;
using System;
using System.IO;
using System.Net;
using xChatEntities;

namespace xChatUtilities
{
    public class RequestService
    {
        /// <summary>
        /// Utilidad que permite ejecutar un servicio API.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="url"></param>
        /// <param name="metodo"></param>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public static ObjectResult Execute<T>(string url, string metodo, T objectRequest)
        {
            ObjectResult objectResult = new ObjectResult();

            string result = string.Empty;

            try
            {
                string json = JsonConvert.SerializeObject(objectRequest);

                WebRequest request = WebRequest.Create(url);

                request.Method = metodo;
                request.PreAuthenticate = true;
                request.ContentType = Constants.ApiContentType;
                request.Timeout = Constants.ApiTimeOut;

                using (var oStreamWriter = new StreamWriter(request.GetRequestStream()))
                {
                    oStreamWriter.Write(json);
                    oStreamWriter.Flush();
                }

                var oHttpResponse = (HttpWebResponse)request.GetResponse();

                using (var oStreamReader = new StreamReader(oHttpResponse.GetResponseStream()))
                {
                    result = oStreamReader.ReadToEnd();
                }

                objectResult.Data = JsonConvert.DeserializeObject(result);

            }
            catch (TimeoutException te)
            {
                objectResult.Id = (Int32)CustomExceptionEnum.TimeOutException;
                objectResult.Message = te.Message;
            }
            catch (Exception ex)
            {
                objectResult.Id = (Int32)CustomExceptionEnum.NotControllerException;
                objectResult.Message = ex.Message;
            }

            return objectResult;
        }
    }

}
