.class Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$1;
.super Ljava/lang/Object;
.source "ReplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a(ILcom/bzbs/marketplace/model/review/ReviewModel;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bzbs/marketplace/model/review/ReviewModel;

.field final synthetic c:Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;ILcom/bzbs/marketplace/model/review/ReviewModel;)V
    .registers 4

    .prologue
    .line 224
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$1;->c:Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;

    iput p2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$1;->a:I

    iput-object p3, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$1;->b:Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 227
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$1;->c:Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;

    iget v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$1;->a:I

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$1;->b:Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;ILjava/lang/String;Ljava/io/File;)V

    .line 228
    return-void
.end method
