.class Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$2;
.super Ljava/lang/Object;
.source "MarketPlaceList2Fragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$2;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 405
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$2;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$30(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Z)V

    .line 406
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 401
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 395
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$2;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$30(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Z)V

    .line 396
    return-void
.end method
