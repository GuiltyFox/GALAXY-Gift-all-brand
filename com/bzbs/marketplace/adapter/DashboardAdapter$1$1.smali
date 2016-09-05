.class Lcom/bzbs/marketplace/adapter/DashboardAdapter$1$1;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

.field final synthetic b:Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)V
    .registers 3

    .prologue
    .line 179
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1$1;->b:Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;

    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1$1;->b:Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->e:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->c(Lcom/bzbs/marketplace/adapter/DashboardAdapter;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    if-eqz v0, :cond_1b

    .line 183
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1$1;->b:Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->e:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->c(Lcom/bzbs/marketplace/adapter/DashboardAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->a(Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)V

    .line 184
    :cond_1b
    return-void
.end method
