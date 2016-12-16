.class public Lcom/bzbs/marketplace/adapter/ReplyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ReplyAdapter.java"


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
            "Lcom/bzbs/marketplace/model/review/ReviewModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 51
    iput v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->e:I

    .line 52
    iput-boolean v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->f:Z

    .line 53
    iput-boolean v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->g:Z

    .line 56
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->b:Landroid/app/Activity;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a:Landroid/view/LayoutInflater;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;
    .registers 2

    .prologue
    .line 119
    check-cast p1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;Z)Z
    .registers 2

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->f:Z

    return p1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;
    .registers 2

    .prologue
    .line 123
    check-cast p1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;

    return-object p1
.end method

.method static synthetic b(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Z
    .registers 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->f:Z

    return v0
.end method


# virtual methods
.method protected a(F)I
    .registers 4

    .prologue
    .line 437
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 439
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a(I)Lcom/bzbs/marketplace/model/review/ReviewModel;
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/review/ReviewModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->d:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p0}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItemViewType(I)I
    .registers 2

    .prologue
    .line 75
    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 6

    .prologue
    .line 88
    if-nez p2, :cond_1c

    .line 89
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_1b

    .line 91
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->b:Landroid/app/Activity;

    new-instance v2, Lcom/bzbs/marketplace/adapter/ReplyAdapter$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$1;-><init>(Lcom/bzbs/marketplace/adapter/ReplyAdapter;Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->c:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    if-eqz v1, :cond_1b

    .line 99
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->c:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    invoke-virtual {v0, p2, v1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a(ILcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 112
    :cond_1b
    :goto_1b
    return-void

    .line 102
    :cond_1c
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_1b

    .line 104
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->b:Landroid/app/Activity;

    new-instance v2, Lcom/bzbs/marketplace/adapter/ReplyAdapter$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$2;-><init>(Lcom/bzbs/marketplace/adapter/ReplyAdapter;Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1b
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 80
    if-nez p2, :cond_12

    .line 81
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f040159

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;-><init>(Lcom/bzbs/marketplace/adapter/ReplyAdapter;Landroid/view/View;)V

    .line 83
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f040152

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;-><init>(Lcom/bzbs/marketplace/adapter/ReplyAdapter;Landroid/view/View;)V

    goto :goto_11
.end method
