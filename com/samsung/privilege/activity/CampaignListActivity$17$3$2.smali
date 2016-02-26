.class Lcom/samsung/privilege/activity/CampaignListActivity$17$3$2;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

.field private final synthetic val$imagePopupWelcome2:Landroid/widget/ImageView;

.field private final synthetic val$layoutButton:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity$17$3;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$2;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$2;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$2;->val$layoutButton:Landroid/widget/LinearLayout;

    .line 1813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$2;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1816
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$2;->val$layoutButton:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1817
    return-void
.end method
