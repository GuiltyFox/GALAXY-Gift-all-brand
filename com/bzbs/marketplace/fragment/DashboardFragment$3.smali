.class Lcom/bzbs/marketplace/fragment/DashboardFragment$3;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "DashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/DashboardFragment;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/DashboardFragment;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 134
    :try_start_8
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->a(Lcom/bzbs/marketplace/fragment/DashboardFragment;Z)V

    .line 135
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Lcom/bzbs/marketplace/fragment/DashboardFragment$3$1;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/fragment/DashboardFragment$3$1;-><init>(Lcom/bzbs/marketplace/fragment/DashboardFragment$3;)V

    .line 136
    invoke-virtual {v3}, Lcom/bzbs/marketplace/fragment/DashboardFragment$3$1;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 135
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->a(Lcom/bzbs/marketplace/fragment/DashboardFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 138
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->b(Lcom/bzbs/marketplace/fragment/DashboardFragment;)V

    .line 139
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 140
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_41} :catch_42

    .line 145
    :cond_41
    :goto_41
    return-void

    .line 141
    :catch_42
    move-exception v0

    goto :goto_41
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 9

    .prologue
    .line 149
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 151
    :try_start_8
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->a(Lcom/bzbs/marketplace/fragment/DashboardFragment;Z)V

    .line 152
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_24

    .line 153
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 154
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 157
    :cond_24
    const-string/jumbo v0, ""

    .line 158
    if-eqz p3, :cond_2e

    .line 159
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 162
    :cond_2e
    if-eqz v0, :cond_69

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 163
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    .line 164
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    iget-object v1, v1, Lcom/bzbs/marketplace/fragment/DashboardFragment;->a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;->getError()Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/marketplace/base/BaseFragment;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_69} :catch_6a

    .line 170
    :cond_69
    :goto_69
    return-void

    .line 166
    :catch_6a
    move-exception v0

    goto :goto_69
.end method

.method public a(Ljava/lang/String;JJJ)V
    .registers 12

    .prologue
    .line 174
    invoke-super/range {p0 .. p7}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->a(Ljava/lang/String;JJJ)V

    .line 175
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 177
    :try_start_b
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/bzbs/marketplace/fragment/DashboardFragment$3$2;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/fragment/DashboardFragment$3$2;-><init>(Lcom/bzbs/marketplace/fragment/DashboardFragment$3;)V

    .line 178
    invoke-virtual {v2}, Lcom/bzbs/marketplace/fragment/DashboardFragment$3$2;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 177
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->a(Lcom/bzbs/marketplace/fragment/DashboardFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 180
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->b(Lcom/bzbs/marketplace/fragment/DashboardFragment;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_29} :catch_2a

    .line 185
    :cond_29
    :goto_29
    return-void

    .line 181
    :catch_2a
    move-exception v0

    goto :goto_29
.end method
