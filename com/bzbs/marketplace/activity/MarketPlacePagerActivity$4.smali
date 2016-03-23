.class Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;
.super Ljava/lang/Object;
.source "MarketPlacePagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

.field final synthetic val$finalPositionCat:I


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iput p2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;->val$finalPositionCat:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;->val$finalPositionCat:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 222
    return-void
.end method
