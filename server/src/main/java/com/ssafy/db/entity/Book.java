package com.ssafy.db.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Builder
public class Book {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "book_name")
	private String bookName;
	
	@Column(name = "book_author")
	private String bookAuthor;
	
	@Column(name = "book_contents")
	private String bookContents;
	
	@Column(name = "book_publisher")
	private String bookPublisher;
	
	@Column
	private String isbn;
	
	@Column(name = "book_pub_year")
	private int bookPubYear;
	
	@ManyToOne
	@JoinColumn(name = "GENRE_ID")
	private Genre genre;
	
	@Column(name = "book_thumbnail_url")
	private String bookThumbnailUrl;
	
	@Column(name = "loan_count")
	private int loanCount;
}
