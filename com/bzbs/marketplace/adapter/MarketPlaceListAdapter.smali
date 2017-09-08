.class public Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MarketPlaceListAdapter.java"


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
.field a:Z

.field b:Z

.field private final c:Landroid/view/LayoutInflater;

.field private d:Landroid/app/Activity;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

.field private g:Lcom/bzbs/marketplace/listener/OnTabCartItemListener;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a:Z

    .line 50
    iput-boolean v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->b:Z

    .line 53
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->d:Landroid/app/Activity;

    .line 54
    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->e:Ljava/util/ArrayList;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->c:Landroid/view/LayoutInflater;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->d:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;
    .registers 3

    .prologue
    .line 93
    instance-of v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    if-eqz v0, :cond_7

    .line 94
    check-cast p1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    .line 95
    :goto_6
    return-object p1

    :cond_7
    const/4 p1, 0x0

    goto :goto_6
.end method

.method static synthetic b(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->e:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bzbs/marketplace/listener/OnTabCartItemListener;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->g:Lcom/bzbs/marketplace/listener/OnTabCartItemListener;

    .line 109
    return-void
.end method

.method public a(Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->f:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    .line 105
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->h:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->e:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->notifyDataSetChanged()V

    .line 66
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItemViewType(I)I
    .registers 2

    .prologue
    .line 70
    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 5

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_23

    .line 82
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-virtual {v1, v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a(Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;)V

    .line 84
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->f:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    if-eqz v0, :cond_1a

    .line 85
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->f:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    invoke-virtual {v1, p2, v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a(ILcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V

    .line 87
    :cond_1a
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->g:Lcom/bzbs/marketplace/listener/OnTabCartItemListener;

    if-eqz v0, :cond_23

    .line 88
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->g:Lcom/bzbs/marketplace/listener/OnTabCartItemListener;

    invoke-virtual {v1, p2, v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a(ILcom/bzbs/marketplace/listener/OnTabCartItemListener;)V

    .line 90
    :cond_23
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 7

    .prologue
    .line 75
    new-instance v0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0400f2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;-><init>(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;Landroid/view/View;)V

    return-object v0
.end method
