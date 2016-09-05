.class Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "MarketPlaceDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->b(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez v0, :cond_12

    .line 131
    :goto_11
    return-void

    .line 123
    :cond_12
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 124
    const-string/jumbo v0, ""

    .line 125
    if-eqz p3, :cond_24

    .line 126
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 128
    :cond_24
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2$1;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2$1;-><init>(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;)V

    .line 129
    invoke-virtual {v3}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2$1;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 128
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->a(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 130
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->c(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;)V

    goto :goto_11
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->b(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez v0, :cond_12

    .line 141
    :goto_11
    return-void

    .line 140
    :cond_12
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_11
.end method

.method public a(Ljava/lang/String;JJJ)V
    .registers 12

    .prologue
    .line 145
    invoke-super/range {p0 .. p7}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->a(Ljava/lang/String;JJJ)V

    .line 146
    const-string/jumbo v0, ""

    .line 147
    if-eqz p1, :cond_d

    .line 148
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 150
    :cond_d
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2$2;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2$2;-><init>(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;)V

    .line 151
    invoke-virtual {v3}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2$2;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 150
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->a(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 152
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->c(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;)V

    .line 153
    return-void
.end method
