.class Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;
.super Ljava/lang/Object;
.source "MarketPlacePagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->h()V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;I)V
    .registers 3

    .prologue
    .line 228
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;->b:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iput p2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;->b:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 232
    return-void
.end method
