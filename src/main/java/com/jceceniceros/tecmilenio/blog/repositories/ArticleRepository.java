package com.jceceniceros.tecmilenio.blog.repositories;

import com.jceceniceros.tecmilenio.blog.models.Article;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ArticleRepository extends JpaRepository<Article, Long> {

}
