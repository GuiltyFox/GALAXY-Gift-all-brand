.class public Lcom/bzbs/marketplace/control/InitImage;
.super Ljava/lang/Object;
.source "InitImage.java"


# direct methods
.method public static a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/io/File;I)V
    .registers 6

    .prologue
    .line 30
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->b(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->b:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 35
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 37
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 40
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p2}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p3}, Lcom/squareup/picasso/RequestCreator;->a(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p3}, Lcom/squareup/picasso/RequestCreator;->b(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestCreator;->a(Landroid/widget/ImageView;)V

    .line 45
    return-void
.end method

.method public static b(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/io/File;I)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p2}, Lcom/squareup/picasso/Picasso;->a(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    sget-object v1, Lcom/squareup/picasso/MemoryPolicy;->a:Lcom/squareup/picasso/MemoryPolicy;

    new-array v2, v3, [Lcom/squareup/picasso/MemoryPolicy;

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->a(Lcom/squareup/picasso/MemoryPolicy;[Lcom/squareup/picasso/MemoryPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    sget-object v1, Lcom/squareup/picasso/NetworkPolicy;->a:Lcom/squareup/picasso/NetworkPolicy;

    new-array v2, v3, [Lcom/squareup/picasso/NetworkPolicy;

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->a(Lcom/squareup/picasso/NetworkPolicy;[Lcom/squareup/picasso/NetworkPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p3}, Lcom/squareup/picasso/RequestCreator;->a(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p3}, Lcom/squareup/picasso/RequestCreator;->b(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestCreator;->a(Landroid/widget/ImageView;)V

    .line 55
    return-void
.end method
