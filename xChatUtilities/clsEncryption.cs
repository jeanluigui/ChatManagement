using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
using System.IO;

namespace xAPI.Library.Security
{
    /// <summary>
    /// Clase Encriptacion y Desencriptacion.
    /// </summary>
    public static class clsEncryption
    {
        private static dynamic parameters = null;

        #region Encrypt
        /// <summary>
        /// Metodo de Encriptacion que contiene un Key por Default
        /// </summary>
        /// <param name="plainText">Texto a Encriptar</param>
        /// <returns>Texto encriptado</returns>
        public static String Encrypt(String plainText)
        {
            try
            {
                String passPhrase = parameters.EncryptionPassPhrase;//"@1B2c3D4e5F6g7H8x1cr3t22";
                String saltValue = parameters.EncryptionSaltValue;//"@1B2c3D4e5F6g7H8";
                String hashAlgorithm = "SHA1";

                Int32 passwordIterations = 2;
                String initVector = parameters.EncryptionInitVector;// "@1B2c3D4e5F6g7H8";
                Int32 keySize = 256;

                Byte[] initVectorBytes = Encoding.ASCII.GetBytes(initVector);
                Byte[] saltValueBytes = Encoding.ASCII.GetBytes(saltValue);

                Byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);


                PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, saltValueBytes, hashAlgorithm, passwordIterations);

                Byte[] keyBytes = password.GetBytes(keySize / 8);
                RijndaelManaged symmetricKey = new RijndaelManaged();

                symmetricKey.Mode = CipherMode.CBC;

                ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);

                MemoryStream memoryStream = new MemoryStream();
                CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);

                cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
                cryptoStream.FlushFinalBlock();
                Byte[] cipherTextBytes = memoryStream.ToArray();
                memoryStream.Close();
                cryptoStream.Close();
                String cipherText = Convert.ToBase64String(cipherTextBytes);
                return cipherText;
            }
            catch (Exception ex)
            {
                return "";
            }
        }
        /// <summary>
        /// Metodo de Encriptacion que se tiene que mandar la Key para Encriptar
        /// </summary>
        /// <param name="c_ENCRYPTION_KEY"></param>
        /// <param name="c_ENCRYPTION_SALTVALUE"></param>
        /// <param name="plainText">Texto a Encriptar</param>
        /// <returns>Texto Encriptado</returns>
        public static String Encrypt(String c_ENCRYPTION_KEY, String c_ENCRYPTION_SALTVALUE, String plainText)
        {

            try
            {
                String passPhrase = c_ENCRYPTION_KEY;
                String saltValue = c_ENCRYPTION_SALTVALUE;
                String hashAlgorithm = "SHA1";

                Int32 passwordIterations = 2;
                String initVector = "@1B2c3D4e5F6g7H8";
                Int32 keySize = 256;

                Byte[] initVectorBytes = Encoding.ASCII.GetBytes(initVector);
                Byte[] saltValueBytes = Encoding.ASCII.GetBytes(saltValue);

                Byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);


                PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, saltValueBytes, hashAlgorithm, passwordIterations);

                Byte[] keyBytes = password.GetBytes(keySize / 8);
                RijndaelManaged symmetricKey = new RijndaelManaged();

                symmetricKey.Mode = CipherMode.CBC;

                ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);

                MemoryStream memoryStream = new MemoryStream();
                CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);

                cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
                cryptoStream.FlushFinalBlock();
                Byte[] cipherTextBytes = memoryStream.ToArray();
                memoryStream.Close();
                cryptoStream.Close();
                String cipherText = Convert.ToBase64String(cipherTextBytes);
                return cipherText;
            }
            catch (Exception )
            {
                return "";
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="c_ENCRYPTION_KEY"></param>
        /// <param name="c_ENCRYPTION_SALTVALUE"></param>
        /// <param name="c_ENCRYPTION_INITVECTOR"></param>
        /// <param name="plainText"></param>
        /// <returns></returns>
        public static String Encrypt(String c_ENCRYPTION_KEY, String c_ENCRYPTION_SALTVALUE, String c_ENCRYPTION_INITVECTOR, String plainText)
        {

            try
            {
                String passPhrase = c_ENCRYPTION_KEY;
                String saltValue = c_ENCRYPTION_SALTVALUE;
                String hashAlgorithm = "SHA1";

                Int32 passwordIterations = 2;
                String initVector = c_ENCRYPTION_INITVECTOR;
                Int32 keySize = 256;

                Byte[] initVectorBytes = Encoding.ASCII.GetBytes(initVector);
                Byte[] saltValueBytes = Encoding.ASCII.GetBytes(saltValue);

                Byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);


                PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, saltValueBytes, hashAlgorithm, passwordIterations);

                Byte[] keyBytes = password.GetBytes(keySize / 8);
                RijndaelManaged symmetricKey = new RijndaelManaged();

                symmetricKey.Mode = CipherMode.CBC;

                ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);

                MemoryStream memoryStream = new MemoryStream();
                CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);

                cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
                cryptoStream.FlushFinalBlock();
                Byte[] cipherTextBytes = memoryStream.ToArray();
                memoryStream.Close();
                cryptoStream.Close();
                String cipherText = Convert.ToBase64String(cipherTextBytes);
                return cipherText;
            }
            catch (Exception)
            {
                return "";
            }
        }
        #endregion
        #region Decrypt
        /// <summary>
        /// Metodo de Desencriptacion que contiene un Key por Default
        /// </summary>
        /// <param name="cipherText">Texto a Encriptar</param>
        /// <returns>Texto Desencriptado</returns>
        public static String Decrypt(String cipherText)
        {
            try
            {
                String passPhrase = parameters.EncryptionPassPhrase;//"@1B2c3D4e5F6g7H8x1cr3t22";
                String saltValue = parameters.EncryptionSaltValue;//"@1B2c3D4e5F6g7H8";
                String hashAlgorithm = "SHA1";

                Int32 passwordIterations = 2;
                String initVector = parameters.EncryptionInitVector;// "@1B2c3D4e5F6g7H8";
                Int32 keySize = 256;
                // Convert Strings defining encryption key characteristics into byte
                // arrays. Let us assume that Strings only contain ASCII codes.
                // If Strings include Unicode characters, use Unicode, UTF7, or UTF8
                // encoding.
                Byte[] initVectorBytes = Encoding.ASCII.GetBytes(initVector);
                Byte[] saltValueBytes = Encoding.ASCII.GetBytes(saltValue);

                // Convert our ciphertext into a byte array.
                Byte[] cipherTextBytes = Convert.FromBase64String(cipherText);

                // First, we must create a password, from which the key will be 
                // derived. This password will be generated from the specified 
                // passphrase and salt value. The password will be created using
                // the specified hash algorithm. Password creation can be done in
                // several iterations.
                PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, saltValueBytes, hashAlgorithm, passwordIterations);

                // Use the password to generate pseudo-random bytes for the encryption
                // key. Specify the size of the key in bytes (instead of bits).
                Byte[] keyBytes = password.GetBytes(keySize / 8);

                // Create uninitialized Rijndael encryption object.
                RijndaelManaged symmetricKey = new RijndaelManaged();

                // It is reasonable to set encryption mode to Cipher Block Chaining
                // (CBC). Use default options for other symmetric key parameters.
                symmetricKey.Mode = CipherMode.CBC;

                // Generate decryptor from the existing key bytes and initialization 
                // vector. Key size will be defined based on the number of the key 
                // bytes.
                ICryptoTransform decryptor = symmetricKey.CreateDecryptor(keyBytes, initVectorBytes);

                // Define memory stream which will be used to hold encrypted data.
                MemoryStream memoryStream = new MemoryStream(cipherTextBytes);

                // Define cryptographic stream (always use Read mode for encryption).
                CryptoStream cryptoStream = new CryptoStream(memoryStream, decryptor, CryptoStreamMode.Read);

                // Since at this point we don't know what the size of decrypted data
                // will be, allocate the buffer long enough to hold ciphertext;
                // plaintext is never longer than ciphertext.
                Byte[] plainTextBytes = new Byte[cipherTextBytes.Length];

                // Start decrypting.
                Int32 decryptedByteCount = cryptoStream.Read(plainTextBytes, 0, plainTextBytes.Length);

                // Close both streams.
                memoryStream.Close();
                cryptoStream.Close();

                // Convert decrypted data into a String. 
                // Let us assume that the original plaintext String was UTF8-encoded.
                String plainText = Encoding.UTF8.GetString(plainTextBytes, 0, decryptedByteCount);

                // Return decrypted String.   
                return plainText;
            }
            catch (Exception ex)
            { 
                return "";
            }
        }
        /// <summary>
        /// Metodo para Desencriptacion que se tiene que mandar la Key  çpara desencriptar
        /// </summary>
        /// <param name="c_ENCRYPTION_KEY"></param>
        /// <param name="c_ENCRYPTION_SALTVALUE"></param>
        /// <param name="cipherText">Texto a Encriptar</param>
        /// <returns>Texto Desencriptado</returns>
        public static String Decrypt(String c_ENCRYPTION_KEY, String c_ENCRYPTION_SALTVALUE, String cipherText)
        {

            try
            {

                String passPhrase = c_ENCRYPTION_KEY;
                String saltValue = c_ENCRYPTION_SALTVALUE;
                String hashAlgorithm = "SHA1";

                Int32 passwordIterations = 2;
                String initVector = "@1B2c3D4e5F6g7H8";
                Int32 keySize = 256;
                // Convert Strings defining encryption key characteristics into byte
                // arrays. Let us assume that Strings only contain ASCII codes.
                // If Strings include Unicode characters, use Unicode, UTF7, or UTF8
                // encoding.
                Byte[] initVectorBytes = Encoding.ASCII.GetBytes(initVector);
                Byte[] saltValueBytes = Encoding.ASCII.GetBytes(saltValue);

                // Convert our ciphertext into a byte array.
                Byte[] cipherTextBytes = Convert.FromBase64String(cipherText);

                // First, we must create a password, from which the key will be 
                // derived. This password will be generated from the specified 
                // passphrase and salt value. The password will be created using
                // the specified hash algorithm. Password creation can be done in
                // several iterations.
                PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, saltValueBytes, hashAlgorithm, passwordIterations);

                // Use the password to generate pseudo-random bytes for the encryption
                // key. Specify the size of the key in bytes (instead of bits).
                Byte[] keyBytes = password.GetBytes(keySize / 8);

                // Create uninitialized Rijndael encryption object.
                RijndaelManaged symmetricKey = new RijndaelManaged();

                // It is reasonable to set encryption mode to Cipher Block Chaining
                // (CBC). Use default options for other symmetric key parameters.
                symmetricKey.Mode = CipherMode.CBC;

                // Generate decryptor from the existing key bytes and initialization 
                // vector. Key size will be defined based on the number of the key 
                // bytes.
                ICryptoTransform decryptor = symmetricKey.CreateDecryptor(keyBytes, initVectorBytes);

                // Define memory stream which will be used to hold encrypted data.
                MemoryStream memoryStream = new MemoryStream(cipherTextBytes);

                // Define cryptographic stream (always use Read mode for encryption).
                CryptoStream cryptoStream = new CryptoStream(memoryStream, decryptor, CryptoStreamMode.Read);

                // Since at this point we don't know what the size of decrypted data
                // will be, allocate the buffer long enough to hold ciphertext;
                // plaintext is never longer than ciphertext.
                Byte[] plainTextBytes = new Byte[cipherTextBytes.Length];

                // Start decrypting.
                Int32 decryptedByteCount = cryptoStream.Read(plainTextBytes, 0, plainTextBytes.Length);

                // Close both streams.
                memoryStream.Close();
                cryptoStream.Close();

                // Convert decrypted data into a String. 
                // Let us assume that the original plaintext String was UTF8-encoded.
                String plainText = Encoding.UTF8.GetString(plainTextBytes, 0, decryptedByteCount);

                // Return decrypted String.   
                return plainText;
            }
            catch (Exception )
            {
                return "";
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="c_ENCRYPTION_KEY"></param>
        /// <param name="c_ENCRYPTION_SALTVALUE"></param>
        /// <param name="c_ENCRYPTION_INITVECTOR"></param>
        /// <param name="cipherText"></param>
        /// <returns></returns>
        public static String Decrypt(String c_ENCRYPTION_KEY, String c_ENCRYPTION_SALTVALUE, String c_ENCRYPTION_INITVECTOR, String cipherText)
        {

            try
            {

                String passPhrase = c_ENCRYPTION_KEY;
                String saltValue = c_ENCRYPTION_SALTVALUE;
                String hashAlgorithm = "SHA1";

                Int32 passwordIterations = 2;
                String initVector = c_ENCRYPTION_INITVECTOR;
                Int32 keySize = 256;
                // Convert Strings defining encryption key characteristics into byte
                // arrays. Let us assume that Strings only contain ASCII codes.
                // If Strings include Unicode characters, use Unicode, UTF7, or UTF8
                // encoding.
                Byte[] initVectorBytes = Encoding.ASCII.GetBytes(initVector);
                Byte[] saltValueBytes = Encoding.ASCII.GetBytes(saltValue);

                // Convert our ciphertext into a byte array.
                Byte[] cipherTextBytes = Convert.FromBase64String(cipherText);

                // First, we must create a password, from which the key will be 
                // derived. This password will be generated from the specified 
                // passphrase and salt value. The password will be created using
                // the specified hash algorithm. Password creation can be done in
                // several iterations.
                PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, saltValueBytes, hashAlgorithm, passwordIterations);

                // Use the password to generate pseudo-random bytes for the encryption
                // key. Specify the size of the key in bytes (instead of bits).
                Byte[] keyBytes = password.GetBytes(keySize / 8);

                // Create uninitialized Rijndael encryption object.
                RijndaelManaged symmetricKey = new RijndaelManaged();

                // It is reasonable to set encryption mode to Cipher Block Chaining
                // (CBC). Use default options for other symmetric key parameters.
                symmetricKey.Mode = CipherMode.CBC;

                // Generate decryptor from the existing key bytes and initialization 
                // vector. Key size will be defined based on the number of the key 
                // bytes.
                ICryptoTransform decryptor = symmetricKey.CreateDecryptor(keyBytes, initVectorBytes);

                // Define memory stream which will be used to hold encrypted data.
                MemoryStream memoryStream = new MemoryStream(cipherTextBytes);

                // Define cryptographic stream (always use Read mode for encryption).
                CryptoStream cryptoStream = new CryptoStream(memoryStream, decryptor, CryptoStreamMode.Read);

                // Since at this point we don't know what the size of decrypted data
                // will be, allocate the buffer long enough to hold ciphertext;
                // plaintext is never longer than ciphertext.
                Byte[] plainTextBytes = new Byte[cipherTextBytes.Length];

                // Start decrypting.
                Int32 decryptedByteCount = cryptoStream.Read(plainTextBytes, 0, plainTextBytes.Length);

                // Close both streams.
                memoryStream.Close();
                cryptoStream.Close();

                // Convert decrypted data into a String. 
                // Let us assume that the original plaintext String was UTF8-encoded.
                String plainText = Encoding.UTF8.GetString(plainTextBytes, 0, decryptedByteCount);

                // Return decrypted String.   
                return plainText;
            }
            catch (Exception)
            {
                return "";
            }
        }

        public static String Encrypt_Sha1(String s,Boolean isascii)
        {
            String text = "";

            if (!isascii)
                text = SHA1HashStringForUTF8String(s);
            else
                text = HashCode(s);
            return text;
        }

        private static String SHA1HashStringForUTF8String(String s)
        {
            Byte[] bytes = Encoding.UTF8.GetBytes(s);

            var sha1 = SHA1.Create();
            Byte[] hashBytes = sha1.ComputeHash(bytes);

            return HexStringFromBytes(hashBytes);
        }

        /// <summary>
        /// Convert an array of bytes to a String of hex digits
        /// </summary>
        /// <param name="bytes">array of bytes</param>
        /// <returns>String of hex digits</returns>
        private static String HexStringFromBytes(Byte[] bytes)
        {
            var sb = new StringBuilder();
            foreach (Byte b in bytes)
            {
                var hex = b.ToString("x2");
                sb.Append(hex);
            }
            return sb.ToString();
        }
        private static String HashCode(String str)
        {
            String rethash = "";
            try
            {

                System.Security.Cryptography.SHA1 hash = System.Security.Cryptography.SHA1.Create();
                System.Text.ASCIIEncoding encoder = new System.Text.ASCIIEncoding();
                Byte[] combined = encoder.GetBytes(str);
                hash.ComputeHash(combined);
                rethash = Convert.ToBase64String(hash.Hash);
            }
            catch (Exception ex)
            {
                String strerr = "Error in HashCode : " + ex.Message;
            }
            return rethash;
        }
        #endregion

        public static void SetParameters(dynamic parameters)
        {
            clsEncryption.parameters = parameters;
        }
        public static dynamic GetParameters()
        {
            return clsEncryption.parameters;
        }
    }
}
