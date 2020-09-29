package com.internet.shop.util;

import com.internet.shop.exceptions.PasswordHashingException;
import com.internet.shop.model.User;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import org.apache.log4j.Logger;

public class HashUtil {
    private static final String HASHING_ALGORITHM = "SHA-512";
    private static final String MESSAGE = "Password hashing failed";
    private static final Logger logger = Logger.getLogger(HashUtil.class);

    public static byte[] getSalt() {
        SecureRandom secureRandom = new SecureRandom();
        byte[] salt = new byte[16];
        secureRandom.nextBytes(salt);
        return salt;
    }

    public static String hashPassword(String password, byte[] salt) {
        StringBuilder hashedPassword = new StringBuilder();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(HASHING_ALGORITHM);
            messageDigest.update(salt);
            byte[] digest = messageDigest.digest(password.getBytes());
            for (byte element : digest) {
                hashedPassword.append(String.format("%02x", element));
            }
        } catch (NoSuchAlgorithmException exception) {
            logger.error(exception);
            throw new PasswordHashingException(MESSAGE, exception);
        }
        return hashedPassword.toString();
    }

    public static boolean isValid(String password, User userFromDB) {
        return hashPassword(password, userFromDB.getSalt()).equals(userFromDB.getPassword());
    }
}

