.class Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11$1;
.super Ljava/lang/Object;
.source "MarketPlaceMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;

.field private final synthetic val$slideOut:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11$1;->val$slideOut:Landroid/view/animation/Animation;

    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, 0x64

    .line 1059
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$41(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1060
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11$1;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1062
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$31(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$41(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1063
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$38(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11$1;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1064
    return-void
.end method
