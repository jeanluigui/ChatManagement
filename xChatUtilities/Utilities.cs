using Microsoft.Extensions.Configuration;
using System;
using System.Data;
using System.Globalization;
using System.IO;

namespace xChatUtilities
{
    public static class Utilities {

  
        public static String ValidateDataRowKey(DataRow dr, String key) {
            return dr[key] is DBNull ? String.Empty : Convert.ToString(dr[key], CultureInfo.InvariantCulture);
        }
        public static String ValidateDataRowKey(DataRow dr, String key, Type type) {
            if (dr.Table.Columns.Contains(key)) {
                if (dr[key] is DBNull || String.IsNullOrEmpty(dr[key].ToString())) {
                    if (type == typeof(Int32) || type == typeof(Int16) || type == typeof(Int64) || type == typeof(Decimal)) {
                        return "0";
                    }
                    if (type == typeof(DateTime)) {
                        return DateTime.MaxValue.ToString("dd/MM/yyyy");
                    }
                    if (type == typeof(Boolean)) {
                        return "False";
                    }
                    return "";
                }
                else {
                    return Convert.ToString(dr[key], CultureInfo.InvariantCulture);
                }
            }
            else {
                if (type == typeof(Int32) || type == typeof(Int16) || type == typeof(Int64) || type == typeof(Decimal)) {
                    return "0";
                }
                if (type == typeof(DateTime)) {
                    return DateTime.MaxValue.ToString("dd/MM/yyyy");
                }
                if (type == typeof(Boolean)) {
                    return "False";
                }
                return "";
            }
        }

        /// <summary>
        /// Generate a random number.
        /// </summary>
        /// <returns>String of six random digits.</returns>
        public static String GenerateRandomCode() {
            Random random = new Random();
            String s = "";
            for (Int32 i = 0; i < 6; i++) {
                s = String.Concat(s, random.Next(10).ToString());
            }

            return s;
        }

        public static T GetPropValue<T>(Object src, String propName) {
            return (T)src.GetType().GetProperty(propName).GetValue(src, null);
        }
    }
}
