package com.jceceniceros.tecmilenio.blog.services;

import com.jceceniceros.tecmilenio.blog.models.Article;

public interface ArticleService {

    public Article find(Long id);
    public Boolean save(Article article);

}
