.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20$2;
.super Ljava/lang/Object;
.source "CampaignDetailAdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;

.field private final synthetic val$slideOut:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20$2;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;

    iput-object p2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20$2;->val$slideOut:Landroid/view/animation/Animation;

    .line 1697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v1, 0x64

    .line 1699
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20$2;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$48(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1700
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20$2;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1702
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20$2;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$36(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20$2;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$48(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1703
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20$2;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$45(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20$2;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1724
    return-void
.end method
