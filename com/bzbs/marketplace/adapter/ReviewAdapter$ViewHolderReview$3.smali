.class Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;
.super Ljava/lang/Object;
.source "ReviewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a(ILcom/bzbs/marketplace/model/review/ReviewModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/model/review/ReviewModel;

.field final synthetic b:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;Lcom/bzbs/marketplace/model/review/ReviewModel;)V
    .registers 3

    .prologue
    .line 255
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;->b:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;->a:Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 258
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;->b:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->c(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 259
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;->b:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;Z)Z

    .line 261
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;->a:Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 262
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;->a:Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cf-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;->a:Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "f-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 267
    :cond_38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3$1;-><init>(Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    :cond_47
    return-void
.end method
