.class Lcom/bzbs/marketplace/adapter/DashboardAdapter$2;
.super Ljava/util/TimerTask;
.source "DashboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(JLandroid/support/v4/view/ViewPager;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPager;

.field final synthetic b:Lcom/bzbs/marketplace/adapter/DashboardAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/support/v4/view/ViewPager;)V
    .registers 3

    .prologue
    .line 209
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$2;->b:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$2;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$2;->b:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->c(Lcom/bzbs/marketplace/adapter/DashboardAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/adapter/DashboardAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/adapter/DashboardAdapter$2$1;-><init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method
