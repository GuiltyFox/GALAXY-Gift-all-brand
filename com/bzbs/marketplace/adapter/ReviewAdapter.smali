.class public Lcom/bzbs/marketplace/adapter/ReviewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ReviewAdapter.java"


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

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 54
    iput v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->e:I

    .line 55
    iput-boolean v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->f:Z

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->g:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->b:Landroid/app/Activity;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a:Landroid/view/LayoutInflater;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 54
    iput v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->e:I

    .line 55
    iput-boolean v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->f:Z

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->g:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->b:Landroid/app/Activity;

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a:Landroid/view/LayoutInflater;

    .line 66
    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->g:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;
    .registers 2

    .prologue
    .line 113
    check-cast p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;Z)Z
    .registers 2

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->d:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected a(F)I
    .registers 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 369
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a(I)Lcom/bzbs/marketplace/model/review/ReviewModel;
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    return-object v0
.end method

.method public a(Lcom/bzbs/marketplace/listener/OnTabItemListener;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->c:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    .line 123
    return-void
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
    .line 70
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->d:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p0}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItemViewType(I)I
    .registers 2

    .prologue
    .line 84
    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 6

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_19

    .line 96
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->b:Landroid/app/Activity;

    new-instance v2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$1;-><init>(Lcom/bzbs/marketplace/adapter/ReviewAdapter;Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->c:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    if-eqz v1, :cond_19

    .line 104
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->c:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    invoke-virtual {v0, p2, v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a(ILcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 106
    :cond_19
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 7

    .prologue
    .line 89
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f0400ed

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;-><init>(Lcom/bzbs/marketplace/adapter/ReviewAdapter;Landroid/view/View;)V

    return-object v0
.end method
