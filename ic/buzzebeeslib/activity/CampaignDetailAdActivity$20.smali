.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;
.super Ljava/lang/Object;
.source "CampaignDetailAdActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    .line 1666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    .registers 2

    .prologue
    .line 1666
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 10
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const-wide/32 v6, 0xea60

    const-wide/16 v4, 0x1f4

    const/4 v2, 0x1

    .line 1671
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$48(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1672
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$48(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1673
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$48(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1674
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$48(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1676
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->outToLeftAnimation()Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$49(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1677
    .local v0, "slideOut":Landroid/view/animation/Animation;
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1678
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1679
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1680
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1682
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$36(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1683
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$36(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$48(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1685
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$45(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1687
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$36(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20$1;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20$1;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1697
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$45(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20$2;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20$2;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1726
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1731
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 1735
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$36(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1736
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$45(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1737
    return-void
.end method
