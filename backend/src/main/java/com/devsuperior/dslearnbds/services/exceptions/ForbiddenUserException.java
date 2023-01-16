package com.devsuperior.dslearnbds.services.exceptions;

public class ForbiddenUserException extends RuntimeException {
	private static final long serialVersionUID = 1L;

	public ForbiddenUserException(String msg) {
		super(msg);
	}
}
