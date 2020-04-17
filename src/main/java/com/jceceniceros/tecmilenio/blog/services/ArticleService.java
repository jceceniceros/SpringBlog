package com.jceceniceros.tecmilenio.blog.services;

import java.util.List;

import com.jceceniceros.tecmilenio.blog.models.Article;

public interface ArticleService {

    public List<Article> all();
    public Article find(Long id);
    public Boolean save(Article article);
    public Boolean delete(Article article);

}
