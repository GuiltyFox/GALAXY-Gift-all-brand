.class Lcom/samsung/privilege/activity/CampaignListActivity$16$2;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignListActivity$16;

.field private final synthetic val$imagePopupWelcome1:Landroid/widget/ImageView;

.field private final synthetic val$imagePopupWelcome2:Landroid/widget/ImageView;

.field private final synthetic val$layoutBack:Landroid/widget/RelativeLayout;

.field private final synthetic val$layoutButton:Landroid/widget/LinearLayout;

.field private final synthetic val$layoutPopupWelcome:Landroid/widget/RelativeLayout;

.field private final synthetic val$tvNext:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity$16;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .registers 8

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$16;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->val$layoutPopupWelcome:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->val$tvNext:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->val$layoutBack:Landroid/widget/RelativeLayout;

    iput-object p6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->val$layoutButton:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    .line 1610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2;)Lcom/samsung/privilege/activity/CampaignListActivity$16;
    .registers 2

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$16;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 9
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1613
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->val$layoutPopupWelcome:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->val$tvNext:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->val$layoutBack:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->val$layoutButton:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$16$2;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V

    .line 1653
    const-wide/16 v1, 0x64

    .line 1613
    invoke-virtual {v6, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1654
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1659
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$16;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$2;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->val$layoutButton:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$2;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$16$2;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1669
    return-void
.end method
