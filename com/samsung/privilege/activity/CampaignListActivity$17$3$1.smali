.class Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

.field private final synthetic val$imagePopupWelcome1:Landroid/widget/ImageView;

.field private final synthetic val$layoutBack:Landroid/widget/RelativeLayout;

.field private final synthetic val$layoutButton:Landroid/widget/LinearLayout;

.field private final synthetic val$tvNext:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity$17$3;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->val$tvNext:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->val$layoutBack:Landroid/widget/RelativeLayout;

    iput-object p5, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->val$layoutButton:Landroid/widget/LinearLayout;

    .line 1745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;)Lcom/samsung/privilege/activity/CampaignListActivity$17$3;
    .registers 2

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$17;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3;)Lcom/samsung/privilege/activity/CampaignListActivity$17;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v6

    new-instance v0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->val$tvNext:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->val$layoutBack:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->val$layoutButton:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v6, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1784
    return-void
.end method
