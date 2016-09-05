.class Lcom/bzbs/marketplace/adapter/DashboardAdapter$2$1;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/DashboardAdapter$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/DashboardAdapter$2;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter$2;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$2$1;->a:Lcom/bzbs/marketplace/adapter/DashboardAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$2$1;->a:Lcom/bzbs/marketplace/adapter/DashboardAdapter$2;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$2;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$2$1;->a:Lcom/bzbs/marketplace/adapter/DashboardAdapter$2;

    iget-object v1, v1, Lcom/bzbs/marketplace/adapter/DashboardAdapter$2;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 216
    return-void
.end method
