package com.jceceniceros.tecmilenio.blog.implementations;

import java.util.List;

import com.jceceniceros.tecmilenio.blog.models.Article;
import com.jceceniceros.tecmilenio.blog.repositories.ArticleRepository;
import com.jceceniceros.tecmilenio.blog.services.ArticleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleRepository repository;

    public List<Article> all() {
        return repository.findAll();
    }

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

    public Boolean delete(Article article) {
        try {
            repository.delete(article);
            return true;
        } catch (Exception e) {
            // Log de la excepcion
            return false;
        }
    }

}
