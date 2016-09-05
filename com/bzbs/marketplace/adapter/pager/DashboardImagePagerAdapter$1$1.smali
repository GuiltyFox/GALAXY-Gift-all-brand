.class Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1$1;
.super Ljava/lang/Object;
.source "DashboardImagePagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1$1;->a:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1$1;->a:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->e:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->a(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    if-eqz v0, :cond_1d

    .line 76
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1$1;->a:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->e:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->a(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1$1;->a:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;

    iget-object v1, v1, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->a(Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)V

    .line 77
    :cond_1d
    return-void
.end method
