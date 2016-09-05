.class Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$2$1;
.super Ljava/lang/Object;
.source "ReplyAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$2;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$2;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$2;)V
    .registers 2

    .prologue
    .line 374
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$2$1;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$2$1;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$2;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$2;->b:Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;Z)Z

    .line 379
    return-void
.end method
