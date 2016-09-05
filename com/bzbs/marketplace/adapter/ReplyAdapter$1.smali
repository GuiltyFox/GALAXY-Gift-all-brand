.class Lcom/bzbs/marketplace/adapter/ReplyAdapter$1;
.super Ljava/lang/Object;
.source "ReplyAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/ReplyAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;

.field final synthetic b:I

.field final synthetic c:Lcom/bzbs/marketplace/adapter/ReplyAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/ReplyAdapter;Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;I)V
    .registers 4

    .prologue
    .line 91
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$1;->c:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$1;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;

    iput p3, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$1;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;

    iget v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$1;->b:I

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$1;->c:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    iget v3, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$1;->b:I

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(I)Lcom/bzbs/marketplace/model/review/ReviewModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a(ILcom/bzbs/marketplace/model/review/ReviewModel;)V

    .line 95
    return-void
.end method
