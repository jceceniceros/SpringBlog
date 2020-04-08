package com.jceceniceros.tecmilenio.blog.implementations;

import com.jceceniceros.tecmilenio.blog.models.Article;
import com.jceceniceros.tecmilenio.blog.repositories.ArticleRepository;
import com.jceceniceros.tecmilenio.blog.services.ArticleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleRepository repository;

    public Article find(Long id) {
        return repository.getOne(id);
    }

    public Boolean save(Article article) {
        try {
            repository.save(article);
            return true;
        } catch (Exception e) {
            // Log de la excepcion
            return false;
        }
    }

}
