.class Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$2;
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
    .line 234
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$2;->c:Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;

    iput p2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$2;->a:I

    iput-object p3, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$2;->b:Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 237
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$2;->c:Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;

    iget v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$2;->a:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$2;->b:Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;ILjava/lang/String;Ljava/io/File;)V

    .line 238
    return-void
.end method
