.class Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;
.super Ljava/lang/Object;
.source "ReviewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a(Landroid/widget/ImageView;I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;ILandroid/widget/ImageView;)V
    .registers 4

    .prologue
    .line 281
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->c:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iput p2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->a:I

    iput-object p3, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 284
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->c:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    iget v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->a:I

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(I)Lcom/bzbs/marketplace/model/review/ReviewModel;

    move-result-object v3

    .line 285
    const/4 v1, 0x0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "api/buzz/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/like?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/review/ReviewModel;->isLiked()Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "method=delete&token="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->c:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iget-object v4, v4, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v4}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    iget-object v4, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->c:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iget-object v4, v4, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v4}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    const v5, 0x7f020297

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->b:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 296
    :goto_81
    invoke-virtual {v3, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setIsLiked(Z)V

    .line 297
    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getLikes()I

    move-result v4

    if-eqz v1, :cond_fc

    :goto_8a
    add-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setLikes(I)V

    .line 299
    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->c:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iget-object v2, v2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->d(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->a:I

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->c:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->c:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iget-object v3, v3, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v3}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 302
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->c:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->notifyDataSetChanged()V

    .line 303
    return-void

    .line 292
    :cond_b0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->c:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iget-object v1, v1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->c:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iget-object v1, v1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    const v4, 0x7f020296

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    move v1, v2

    goto :goto_81

    .line 297
    :cond_fc
    const/4 v2, -0x1

    goto :goto_8a
.end method
