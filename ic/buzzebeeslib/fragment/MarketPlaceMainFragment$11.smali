.class Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;
.super Ljava/lang/Object;
.source "MarketPlaceMainFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    .registers 2

    .prologue
    .line 1036
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 9
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const-wide/32 v5, 0xea60

    const-wide/16 v3, 0x1f4

    const/4 v2, 0x1

    .line 1041
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$41(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1042
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$41(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1043
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$41(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1044
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$41(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1046
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->outToLeftAnimation()Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$42(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1047
    .local v0, "slideOut":Landroid/view/animation/Animation;
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1048
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1049
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1050
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1052
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$31(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1053
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$31(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$41(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1055
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$38(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1057
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$31(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11$1;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$38(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11$2;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11$2;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1079
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1084
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 1088
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$31(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1089
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$38(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1090
    return-void
.end method
