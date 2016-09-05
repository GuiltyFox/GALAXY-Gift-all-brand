.class Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3$1;
.super Ljava/lang/Object;
.source "ReviewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;)V
    .registers 2

    .prologue
    .line 267
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3$1;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3$1;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;->b:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;Z)Z

    .line 272
    return-void
.end method
