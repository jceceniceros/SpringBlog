package com.jceceniceros.tecmilenio.blog.forms.articles;

import javax.validation.constraints.NotEmpty;

public class UpdateArticleForm {

    @NotEmpty(message = "{article.title.empty}")
    private String title;

    @NotEmpty(message = "{article.body.empty}")
    private String body;

    @NotEmpty(message = "{article.imageurl.empty}")
    private String imageUrl;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Override
    public String toString() {
        return String.format(
            "UpdateArticleForm [ title=%s, body=%s, imageUrl=%s ]",
            title, body, imageUrl
        );
    }

}
