.class final Lcom/samsung/privilege/util/DialogNotification$6;
.super Ljava/lang/Object;
.source "DialogNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogNotification;->c(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .registers 2

    .prologue
    .line 197
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogNotification$6;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 200
    new-instance v0, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;

    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->P(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogNotification;->a(Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;)Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;

    .line 201
    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->g()Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogNotification$6;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 204
    return-void
.end method
