package com.cegeka.eventsdashboard.exception;

public class FileTypeNotSupportedException extends RuntimeException {
    public FileTypeNotSupportedException(String message){
        super(message);
    }
}
