using Newtonsoft.Json;
using System;
using System.IO;
using System.Net;
using xChatEntities;

namespace xChatUtilities
{
    public sealed class RequestService
    {
        /// <summary>
        /// Utilidad que permite ejecutar un servicio API.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="url"></param>
        /// <param name="metodo"></param>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public static ObjectResult<TResponse> Execute<TResponse, TRequest>(string url, string metodo, ObjectRequest<TRequest> objectRequest) 
        {
            ObjectResult<TResponse> objectResult = new ObjectResult<TResponse>();

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

                //objectResult.Data = JsonConvert.DeserializeObject<T>(result);

                objectResult = JsonConvert.DeserializeObject<ObjectResult<TResponse>>(result);

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

        /// <summary>
        /// 
        /// </summary>
        /// <typeparam name="TResponse"></typeparam>
        /// <typeparam name="TRequest"></typeparam>
        /// <param name="url"></param>
        /// <param name="metodo"></param>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public static ObjectResultList<TResponse> ExecuteList<TResponse, TRequest>(string url, string metodo, ObjectRequest<TRequest> objectRequest) where TResponse : EntityBaseClass, new()
        {
            ObjectResultList<TResponse> objectResult = new ObjectResultList<TResponse>();

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

                //objectResult.Data = JsonConvert.DeserializeObject<T>(result);

                objectResult = JsonConvert.DeserializeObject<ObjectResultList<TResponse>>(result);

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
