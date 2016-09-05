.class Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$1;
.super Ljava/lang/Object;
.source "FriendWinnerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;

.field final synthetic b:I

.field final synthetic c:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;I)V
    .registers 4

    .prologue
    .line 56
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$1;->c:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$1;->a:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;

    iput p3, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$1;->a:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;

    iget v1, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$1;->b:I

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$1;->c:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    iget v3, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$1;->b:I

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->a(I)Lcom/bzbs/marketplace/model/FriendWinnerModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;->a(ILcom/bzbs/marketplace/model/FriendWinnerModel;)V

    .line 60
    return-void
.end method
