.class Lcom/samsung/privilege/activity/CampaignListActivity$18;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;->playPopupWelcome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

.field private final synthetic val$imagePopupWelcome1:Landroid/widget/ImageView;

.field private final synthetic val$layoutButton:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$18;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$18;->val$layoutButton:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$18;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    .line 1838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$18;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$18$1;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$18;->val$layoutButton:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/CampaignListActivity$18$1;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$18;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1846
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1851
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$18;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$18$2;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$18;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/CampaignListActivity$18$2;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$18;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1860
    return-void
.end method
