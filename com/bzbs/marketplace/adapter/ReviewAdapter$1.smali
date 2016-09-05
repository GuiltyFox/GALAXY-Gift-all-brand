.class Lcom/bzbs/marketplace/adapter/ReviewAdapter$1;
.super Ljava/lang/Object;
.source "ReviewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/ReviewAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

.field final synthetic b:I

.field final synthetic c:Lcom/bzbs/marketplace/adapter/ReviewAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/ReviewAdapter;Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;I)V
    .registers 4

    .prologue
    .line 96
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$1;->c:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$1;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iput p3, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 99
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$1;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iget v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$1;->b:I

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$1;->c:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    iget v3, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$1;->b:I

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(I)Lcom/bzbs/marketplace/model/review/ReviewModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a(ILcom/bzbs/marketplace/model/review/ReviewModel;)V

    .line 100
    return-void
.end method
