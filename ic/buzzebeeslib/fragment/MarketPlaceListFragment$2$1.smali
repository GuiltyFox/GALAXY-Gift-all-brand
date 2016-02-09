.class Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$1;
.super Ljava/lang/Object;
.source "MarketPlaceListFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$1;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 289
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 294
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 298
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$1$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$1$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 303
    return-void
.end method
