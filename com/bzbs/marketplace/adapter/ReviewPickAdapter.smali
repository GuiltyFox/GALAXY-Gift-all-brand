.class public Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ReviewPickAdapter.java"


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
.field private a:[Ljava/lang/Integer;

.field private final b:Landroid/view/LayoutInflater;

.field private c:Landroid/app/Activity;

.field private d:Lcom/bzbs/marketplace/listener/OnTabItemListener;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f020278

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const v2, 0x7f020277

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->a:[Ljava/lang/Integer;

    .line 32
    iput v3, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->e:I

    .line 35
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->c:Landroid/app/Activity;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->b:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;
    .registers 2

    .prologue
    .line 68
    check-cast p1, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;)[Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->a:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic b(Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->c:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bzbs/marketplace/listener/OnTabItemListener;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->d:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    .line 78
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->a:[Ljava/lang/Integer;

    array-length v0, v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 2

    .prologue
    .line 48
    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 5

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_13

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;->a(ILcom/bzbs/marketplace/model/SettingModel;)V

    .line 62
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->d:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    if-eqz v1, :cond_13

    .line 63
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->d:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    invoke-virtual {v0, p2, v1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;->a(ILcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 65
    :cond_13
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 7

    .prologue
    .line 53
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f04014e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;-><init>(Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;Landroid/view/View;)V

    return-object v0
.end method
