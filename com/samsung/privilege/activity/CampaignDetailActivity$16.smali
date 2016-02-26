.class Lcom/samsung/privilege/activity/CampaignDetailActivity$16;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;->doMyPoint(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

.field private final synthetic val$imagePopupMyPoint:Landroid/widget/ImageView;

.field private final synthetic val$layoutButton:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$16;->val$layoutButton:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$16;->val$imagePopupMyPoint:Landroid/widget/ImageView;

    .line 2560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$16$1;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$16;->val$layoutButton:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$16$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$16;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2568
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2573
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$16$2;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$16;->val$imagePopupMyPoint:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$16$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$16;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2582
    return-void
.end method
