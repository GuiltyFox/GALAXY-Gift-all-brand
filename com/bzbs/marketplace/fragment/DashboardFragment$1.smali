.class Lcom/bzbs/marketplace/fragment/DashboardFragment$1;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/DashboardFragment;->b()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/marketplace/fragment/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/DashboardFragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 71
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$1;->b:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$1;->b:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$1;->b:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->a(Lcom/bzbs/marketplace/fragment/DashboardFragment;Ljava/lang/String;)V

    .line 76
    return-void
.end method
