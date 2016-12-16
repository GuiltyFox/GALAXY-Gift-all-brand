.class public Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FriendWinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Landroid/app/Activity;

.field private c:Lcom/bzbs/marketplace/listener/OnTabItemListener;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/FriendWinnerModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->e:I

    .line 32
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->b:Landroid/app/Activity;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->a:Landroid/view/LayoutInflater;

    .line 34
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;
    .registers 2

    .prologue
    .line 73
    check-cast p1, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;

    return-object p1
.end method


# virtual methods
.method public a(I)Lcom/bzbs/marketplace/model/FriendWinnerModel;
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/FriendWinnerModel;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/FriendWinnerModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->d:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p0}, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->notifyDataSetChanged()V

    .line 40
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItemViewType(I)I
    .registers 2

    .prologue
    .line 44
    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 6

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_19

    .line 56
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->b:Landroid/app/Activity;

    new-instance v2, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$1;-><init>(Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 63
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->c:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    if-eqz v1, :cond_19

    .line 64
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->c:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    invoke-virtual {v0, p2, v1}, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;->a(ILcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 66
    :cond_19
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 7

    .prologue
    .line 49
    new-instance v0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f04015d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;-><init>(Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;Landroid/view/View;)V

    return-object v0
.end method
