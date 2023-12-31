package net.javaguides.springboot.service;

import net.javaguides.springboot.model.User;
import net.javaguides.springboot.model.UserOtp;
import net.javaguides.springboot.repository.UserOtpRepository;
import net.javaguides.springboot.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.mail.MessagingException;
import java.time.LocalDateTime;

@Service
public class UserOtpServiceImpl implements UserOtpService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
    @Autowired
    private UserOtpRepository userOtpRepository;

    @Override
    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public void saveOtpCode(String email, String otpCode) {
        UserOtp userOtp = new UserOtp();
        userOtp.setEmail(email);
        userOtp.setOtpCode(otpCode);
        userOtp.setExpiryTime(LocalDateTime.now().plusMinutes(5));
        userOtpRepository.save(userOtp);

    }


    @Override
    public boolean isValidOtpCode(String email, String otpCode) {
        // delete any expired OTP codes
//        userOtpRepository.deleteByExpiryTime(LocalDateTime.now());
        // check if OTP code is valid for this email
        UserOtp otp = userOtpRepository.findByEmailAndOtp(email, otpCode);
        System.out.println(otp.getEmail() + " Email");
        return otp != null;
    }

    @Transactional
    @Override
    public void updatePassword(String email, String newPassword) {
        User user = userRepository.findByEmail(email);
        String encodedPassword = passwordEncoder.encode(newPassword);
        user.setPassword(encodedPassword);
        userRepository.save(user);
        // delete OTP code from database after password is reset
        userOtpRepository.deleteByEmail(email);
    }
}
