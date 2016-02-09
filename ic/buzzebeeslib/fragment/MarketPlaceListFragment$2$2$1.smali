.class Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$2$1;
.super Ljava/lang/Object;
.source "MarketPlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$2;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$2;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$2$1;->this$2:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$2;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 321
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$2$1;->this$2:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$2;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$2;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$2;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$2;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 322
    return-void
.end method
