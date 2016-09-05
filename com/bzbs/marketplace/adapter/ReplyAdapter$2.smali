.class Lcom/bzbs/marketplace/adapter/ReplyAdapter$2;
.super Ljava/lang/Object;
.source "ReplyAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/ReplyAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;

.field final synthetic b:I

.field final synthetic c:Lcom/bzbs/marketplace/adapter/ReplyAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/ReplyAdapter;Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;I)V
    .registers 4

    .prologue
    .line 104
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$2;->c:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$2;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;

    iput p3, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$2;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;

    iget v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$2;->b:I

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$2;->c:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    iget v3, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$2;->b:I

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(I)Lcom/bzbs/marketplace/model/review/ReviewModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->a(ILcom/bzbs/marketplace/model/review/ReviewModel;)V

    .line 108
    return-void
.end method
